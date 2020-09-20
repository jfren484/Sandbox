<?
require_once('include/common.inc.php');
$title = 'Add Spending';
require_once('include/headhtml.inc.php');

$kids = GetKids();
?>
				<form class="autoAjaxForm" action="groupSpendingSave.php" method="POST">
					<fieldset data-role="controlgroup">
						<input type="date" name="date" value="<? echo GetDateTime('now')->format('Y-m-d'); ?>" />
					</fieldset>
					<fieldset data-role="controlgroup">
						<input type="text" name="description" placeholder="Description" />
					</fieldset>
<?
foreach ($kids as $kid)
{
?>
					<div class="formRow">
						<label for="spent[<? echo $kid['KidId']; ?>]"><? echo $kid['Name']; ?>:</label>
						<div>$ <input type="number" name="spent[<? echo $kid['KidId']; ?>]" step="0.01" /></div>
					</div>
<?
}
?>
					<input type="submit" value="Add Spending" />
				</form>
<?
require_once('include/foothtml.inc.php');
?>