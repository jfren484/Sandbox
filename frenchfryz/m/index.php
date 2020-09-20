<?
require_once('include/common.inc.php');
$title = 'Kid Finances';
require_once('include/headhtml.inc.php');
?>
				<ul data-role="listview" data-inset="true">
<?
$kids = GetKids();
foreach ($kids as $kid)
{
?>
					<li><a href="kid.php?id=<? echo $kid['KidId']; ?>"><? echo $kid['Name'];
						?><span class="ui-li-aside amount<? echo $kid['SpendingBalance'] < 0 ? 'Neg' : '';
						?>">$<? echo $kid['SpendingBalance']; ?></span></a></li>
<?
}
?>
				</ul>

				<fieldset class="ui-grid-a">
					<div class="ui-block-a" style="width: 45%">
						<a href="allowance.php" data-role="button" data-icon="plus">Allowance</a>
					</div>
					<div class="ui-block-b" style="width: 55%">
						<a href="groupIncome.php" data-role="button" data-icon="plus">Group Income</a>
					</div>
				</fieldset>
				<fieldset class="ui-grid-a">
					<div class="ui-block-a" style="width: 40%">
						<a href="tithe.php" data-role="button" data-icon="plus">Tithe</a>
					</div>
					<div class="ui-block-b" style="width: 60%">
						<a href="groupSpending.php" data-role="button" data-icon="plus">Group Spending</a>
					</div>
				</fieldset>
				<a href="admin.php" data-role="button" data-icon="gear">Administration</a>
<?
require_once('include/foothtml.inc.php');
?>
