<?
require_once('include/common.inc.php');
$id = $_REQUEST['id'];
$kid = GetKid($id);
$title = $kid['Name'];
require_once('include/headhtml.inc.php');
?>
				<ul data-role="listview" data-inset="true">
					<li>Spending Balance <span class="ui-li-aside amount<? echo $kid['SpendingBalance'] < 0 ? 'Neg' : '';
						?>">$<? echo $kid['SpendingBalance']; ?></span></li>
					<li>Tithe Balance <span class="ui-li-aside amount<? echo $kid['TitheBalance'] < 0 ? 'Neg' : '';
						?>">$<? echo $kid['TitheBalance']; ?></span></li>
					<li>Savings Balance <span class="ui-li-aside amount<? echo $kid['SavingsBalance'] < 0 ? 'Neg' : '';
						?>">$<? echo $kid['SavingsBalance']; ?></span></li>
				</ul>
				<a href="income.php?id=<? echo $id; ?>" data-role="button" data-icon="plus">Income</a>
				<fieldset class="ui-grid-a">
					<div class="ui-block-a">
						<a href="spending.php?id=<? echo $id; ?>" data-role="button" data-icon="minus">Spending</a>
					</div>
					<div class="ui-block-b">
						<a href="savings.php?id=<? echo $id; ?>" data-role="button" data-icon="minus">Savings</a>
					</div>
				</fieldset>
				<a href="trans.php?id=<? echo $id; ?>" data-role="button" data-icon="grid">Transactions</a>
<?
require_once('include/foothtml.inc.php');
?>