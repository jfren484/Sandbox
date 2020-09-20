<?
require_once('time.inc.php');
require_once('dbconsts.inc.php');

$connection = mysql_pconnect(CONFIG_MYSQL_SERVER, CONFIG_MYSQL_USER, CONFIG_MYSQL_PASS) or die();
mysql_select_db(CONFIG_MYSQL_DB, $connection) or die(mysql_error($connection));

function ExecuteSQL($query)
{
	GLOBAL	$connection;

	$result = mysql_query($query, $connection) or die(mysql_error() . "<pre>\r\nQUERY:\r\n$query</pre>");

	return $result;
}

function GetRecords($query)
{
	$rows = ExecuteSQL($query);
	$recs = array();

	if ($rows !== true && mysql_num_rows($rows) > 0)
		while ($rec = mysql_fetch_array($rows, MYSQL_ASSOC))
			$recs[] = $rec;

	return $recs;
}

function GetFirstRecord($query)
{
	$recs = GetRecords($query);
	return (count($recs) > 0 ? $recs[0] : null);
}

function GetSingleValue($query)
{
	$rec = GetFirstRecord($query);
	$val = null;

	if ($rec != null)
		foreach ($rec as $value)
		{
			$val = $value;
			break;
		}

	return $val;
}

function GetKid($id)
{
	return GetFirstRecord("
		SELECT
			k.Name,
			t.SpendingBalance,
			t.TitheBalance,
			t.SavingsBalance
		FROM           KidFinances_Transaction t
			INNER JOIN KidFinances_Kid         k ON k.KidId = t.KidId
		WHERE t.KidId = $id
		ORDER BY
			t.Date DESC,
			t.TransactionId DESC
		LIMIT 1
	");
}

function GetKids()
{
	return GetRecords("
		SELECT
			k.KidId,
			k.Name,
			(
				SELECT
					SpendingBalance
				FROM KidFinances_Transaction t
				WHERE t.KidId = k.KidId
				ORDER BY
					t.Date DESC,
					t.TransactionId DESC
				LIMIT 1
			) AS SpendingBalance
		FROM KidFinances_Kid k
	");
}

function GetTransaction($id)
{
	return GetFirstRecord("
		SELECT
			t.TransactionId,
			UNIX_TIMESTAMP(t.Date) AS Date,
			t.Description,
			t.IncomeAmount,
			t.TitheAmount,
			t.SavingsAmount,
			t.SpendingAmount,
			t.TitheBalance,
			t.SavingsBalance,
			t.SpendingBalance
		FROM KidFinances_Transaction t
		WHERE t.TransactionId = $id
	");
}

function GetTransactions($id)
{
	return GetRecords("
		SELECT
			t.TransactionId,
			UNIX_TIMESTAMP(t.Date) AS Date,
			t.Description,
			CASE
				WHEN t.IncomeAmount != 0 THEN t.IncomeAmount
				WHEN t.TitheAmount != 0 THEN t.TitheAmount
				WHEN t.SavingsAmount != 0 THEN t.SavingsAmount
				ELSE t.SpendingAmount
			END AS Amount
		FROM KidFinances_Transaction t
		WHERE t.KidId = $id
		ORDER BY
			t.Date DESC,
			t.TransactionId DESC
	");
}

function GetKidsAllowances()
{
	return GetRecords("
		SELECT
			k.KidId,
			k.Name,
			k.Allowance
		FROM KidFinances_Kid k
	");
}

function GetKidsTithes($date)
{
    $date = date('Y-m-d', $date) . ' 23:59:59';
	return GetRecords("
		SELECT
			k.KidId,
			k.Name,
			(
				SELECT
					TitheBalance
				FROM KidFinances_Transaction t
				WHERE t.KidId = k.KidId
                  AND t.Date < '$date'
				ORDER BY
					t.Date DESC,
					t.TransactionId DESC
				LIMIT 1
			) AS TitheBalance
		FROM KidFinances_Kid k
	");
}

function GetNextAllowanceDate()
{
	return GetSingleValue("
		SELECT
			UNIX_TIMESTAMP(MAX(t.Date) + INTERVAL 7 DAY)
		FROM KidFinances_Transaction t
		WHERE t.Description = 'Allowance'
		LIMIT 1
	");
}

function GetNextTitheDate()
{
	return GetSingleValue("
		SELECT
			UNIX_TIMESTAMP(MAX(t.Date) + INTERVAL 7 DAY)
		FROM KidFinances_Transaction t
		WHERE t.Description = 'Tithe'
		LIMIT 1
	");
}

function InsertTransaction($kidId, $incomeAmount, $titheAmount, $savingsAmount, $spendingAmount, $date, $description)
{
	$kid = GetFirstRecord("
		SELECT
			k.Name,
			t.SpendingBalance,
			t.TitheBalance,
			t.SavingsBalance
		FROM           KidFinances_Transaction t
			INNER JOIN KidFinances_Kid         k ON k.KidId = t.KidId
		WHERE t.KidId = $kidId
		  AND t.Date <= '$date'
		ORDER BY
			t.Date DESC,
			t.TransactionId DESC
		LIMIT 1
	");

	$spendingBalance = $kid['SpendingBalance'] + $spendingAmount;
	$titheBalance = max($kid['TitheBalance'] + $titheAmount, 0);
	$savingsBalance = $kid['SavingsBalance'] + $savingsAmount;

	ExecuteSQL("
		INSERT INTO KidFinances_Transaction (
			KidId,
			IncomeAmount,
			TitheAmount,
			SavingsAmount,
			SpendingAmount,
			SpendingBalance,
			TitheBalance,
			SavingsBalance,
			Date,
			Description
		) VALUES (
			$kidId,
			$incomeAmount,
			$titheAmount,
			$savingsAmount,
			$spendingAmount,
			$spendingBalance,
			$titheBalance,
			$savingsBalance,
			'$date',
			'$description'
		)
	");

	UpdateTransactionBalances($kidId, $log, $date);
}

function InsertIncomes($date, $type, $description, $data)
{
	foreach ($data as $id => $amount)
		if ($amount != 0)
			InsertIncome($id, $amount, $date, $type, $description);
}

function InsertSavings($id, $amount, $date)
{
	InsertTransaction($id, 0, 0, -$amount, 0, $date, 'Deposited in Bank Account');
}

function InsertSpending($id, $amount, $date, $description)
{
	InsertTransaction($id, 0, 0, 0, -$amount, $date, $description);
}

function InsertSpendings($date, $description, $data)
{
	foreach ($data as $id => $amount)
		if ($amount != 0)
			InsertSpending($id, $amount, $date, $description);
}

function InsertIncome($id, $amount, $date, $type, $description)
{
	$tithePct = 10;
	$savePct = 10;
	if ($type == 'gift')
	{
		$tithePct = 0;
		$savePct = 0;
	}
	else if ($type == 'save')
	{
		$savePct = 50;
	}

	$tithe = ceil($amount * $tithePct) / 100;
	$savings = ceil($amount * $savePct) / 100;
	$spend = $amount - $tithe - $savings;

	InsertTransaction($id, $amount, $tithe, $savings, $spend, $date, $description);
}

function InsertTithes($date, $data)
{
	foreach ($data as $id => $amount)
	{
		if ($amount == 0) continue;

		InsertTransaction($id, 0, -$amount, 0, 0, $date, 'Tithe');
	}
}

function UpdateTransaction($id, $incomeAmount, $titheAmount, $savingsAmount, $spendingAmount, $date, $description)
{
	$transaction = GetFirstRecord("
		SELECT
			KidId,
			UNIX_TIMESTAMP(Date) AS Date
		FROM KidFinances_Transaction
		WHERE TransactionId = $id
	");
	
	ExecuteSQL("
		UPDATE KidFinances_Transaction SET
			IncomeAmount = $incomeAmount,
			TitheAmount = $titheAmount,
			SavingsAmount = $savingsAmount,
			SpendingAmount = $spendingAmount,
			Date = '$date',
			Description = '$description'
		WHERE TransactionId = $id
	");

	if ($transaction['Date'] < strtotime($date))
		$date = date('Y-m-d', $transaction['Date']);
	echo $date;

	UpdateTransactionBalances($transaction['KidId'], $log, $date);
}

function UpdateTransactionBalances($id, &$log, $date)
{
	$updated = 0;
	$log = '';

	$transaction = GetFirstRecord("
		SELECT
			TitheBalance,
			SavingsBalance,
			SpendingBalance
		FROM KidFinances_Transaction
		WHERE KidId = $id
		  AND Date < '$date'
		ORDER BY
			Date DESC,
			TransactionId DESC
		LIMIT 1
	");
	$titheBalance    = $transaction == null ? 0 : $transaction['TitheBalance'];
	$savingsBalance  = $transaction == null ? 0 : $transaction['SavingsBalance'];
	$spendingBalance = $transaction == null ? 0 : $transaction['SpendingBalance'];

	for ($i = 0; ; $i++)
	{
		$transaction = GetFirstRecord("
			SELECT
				TransactionId,
				TitheAmount,
				SavingsAmount,
				SpendingAmount,
				TitheBalance,
				SavingsBalance,
				SpendingBalance
			FROM KidFinances_Transaction
			WHERE KidId = $id
			  AND Date >= '$date'
			ORDER BY
				Date ASC,
				TransactionId ASC
			LIMIT $i, 1
		");
		if ($transaction == null) break;

		$tranId = $transaction['TransactionId'];
		$exTitheBalance = round($transaction['TitheBalance'], 2);
		$exSavingsBalance = round($transaction['SavingsBalance'], 2);
		$exSpendingBalance = round($transaction['SpendingBalance'], 2);

		$titheBalance = max(round($titheBalance + $transaction['TitheAmount'], 2), 0);
		$savingsBalance = max(round($savingsBalance + $transaction['SavingsAmount'], 2), 0);
		$spendingBalance = round($spendingBalance + $transaction['SpendingAmount'], 2);

		if ((string)$titheBalance != (string)$exTitheBalance ||
			(string)$savingsBalance != (string)$exSavingsBalance ||
			(string)$spendingBalance != (string)$exSpendingBalance)
		{
			$log .= "\n${transaction['TransactionId']} Updated:";
			$log .= "\nTithe: $exTitheBalance => $titheBalance";
			$log .= "\nSavings: $exSavingsBalance => $savingsBalance";
			$log .= "\nSpending: $exSpendingBalance => $spendingBalance<br />";
			ExecuteSQL("
				UPDATE KidFinances_Transaction SET
					TitheBalance = $titheBalance,
					SavingsBalance = $savingsBalance,
					SpendingBalance = $spendingBalance
				WHERE TransactionId = $tranId;
			");
			$updated++;
		}
	}

	return $updated;
}
?>
