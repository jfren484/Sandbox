<?
require_once('include/common.inc.php');
$title = 'Add Allowance';
require_once('include/headhtml.inc.php');

$nextAllowanceDate = GetNextAllowanceDate();
$kids = GetKidsAllowances();
?>
				<form class="autoAjaxForm" action="groupIncomeSave.php" method="POST">
					<input type="hidden" name="description" value="Allowance" />
					<fieldset data-role="controlgroup">
						<input type="date" name="date" value="<? echo date('Y-m-d', $nextAllowanceDate); ?>" />
					</fieldset>
<?
foreach ($kids as $kid)
{
?>
					<div class="formRow">
						<label for="incomes[<? echo $kid['KidId']; ?>]"><? echo $kid['Name']; ?>:</label>
						<div>$ <input type="number" name="incomes[<? echo $kid['KidId']; ?>]"
							value="<? echo $kid['Allowance']; ?>" step="0.01" /></div>
					</div>
<?
}
?>
					<input type="submit" value="Add Allowance" />
				</form>
<?
require_once('include/foothtml.inc.php');
?>