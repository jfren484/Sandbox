<?
require_once('include/common.inc.php');
$title = 'Edit Transaction';
require_once('include/headhtml.inc.php');

$id = $_REQUEST['id'];
$tran = GetTransaction($id);
?>
				<form class="autoAjaxForm" action="tranSave.php" method="POST">
					<input type="hidden" name="id" value="<? echo $id; ?>" />
					<fieldset data-role="controlgroup">
						<input type="date" name="date" value="<? echo date('Y-m-d', $tran['Date']); ?>" />
					</fieldset>
					<fieldset data-role="controlgroup">
						<input type="text" name="description" value="<? echo $tran['Description']; ?>" placeholder="Description" />
					</fieldset>
					<div class="formRow">
						<label for="incomeAmount">Income:</label>
						<div>$ <input type="number" name="incomeAmount" value="<? echo $tran['IncomeAmount']; ?>"
							placeholder="Amount" step="0.01" /></div>
					</div>
					<div class="formRow">
						<label for="titheAmount">Tithe:</label>
						<div>$ <input type="number" name="titheAmount" value="<? echo $tran['TitheAmount']; ?>"
							placeholder="Amount" step="0.01" /></div>
					</div>
					<div class="formRow">
						<label for="titheAmount">Tithe Balance:</label>
						<div>$ <input type="number" readonly="readonly" value="<? echo $tran['TitheBalance']; ?>" /></div>
					</div>
					<div class="formRow">
						<label for="savingsAmount">Savings:</label>
						<div>$ <input type="number" name="savingsAmount" value="<? echo $tran['SavingsAmount']; ?>"
							placeholder="Amount" step="0.01" /></div>
					</div>
					<div class="formRow">
						<label for="titheAmount">Savings Balance:</label>
						<div>$ <input type="number" readonly="readonly" value="<? echo $tran['SavingsBalance']; ?>" /></div>
					</div>
					<div class="formRow">
						<label for="spendingAmount">Spending:</label>
						<div>$ <input type="number" name="spendingAmount" value="<? echo $tran['SpendingAmount']; ?>"
							placeholder="Amount" step="0.01" /></div>
					</div>
					<div class="formRow">
						<label for="titheAmount">Spending Balance:</label>
						<div>$ <input type="number" readonly="readonly" value="<? echo $tran['SpendingBalance']; ?>" /></div>
					</div>
					</ul>
					<input type="submit" value="Save" />
				</form>
<?
require_once('include/foothtml.inc.php');
?>