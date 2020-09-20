<?
require_once('include/common.inc.php');
$title = 'Add Income';
require_once('include/headhtml.inc.php');

$kids = GetKids();
?>
				<form class="autoAjaxForm" action="groupIncomeSave.php" method="POST">
					<fieldset data-role="controlgroup">
						<input type="date" name="date" value="<? echo GetDateTime('now')->format('Y-m-d'); ?>" />
					</fieldset>
					<fieldset data-role="controlgroup">
						<input type="radio" id="typeRegular" name="type" value="regular" checked="checked" />
						<label for="typeRegular">Regular (10%/10%/80%)</label>
						<input type="radio" id="typeGift" name="type" value="gift"  />
						<label for="typeGift">Gift (100% spending)</label>
						<input type="radio" id="typeSave" name="type" value="save"  />
						<label for="typeSave">Saving (10%/50%/40%)</label>
					</fieldset>
					<fieldset data-role="controlgroup">
						<input type="text" name="description" placeholder="Description" />
					</fieldset>
<?
foreach ($kids as $kid)
{
?>
					<div class="formRow">
						<label for="incomes[<? echo $kid['KidId']; ?>]"><? echo $kid['Name']; ?>:</label>
						<div>$ <input type="number" name="incomes[<? echo $kid['KidId']; ?>]" step="0.01" /></div>
					</div>
<?
}
?>
					<input type="submit" value="Add Income" />
				</form>
<?
require_once('include/foothtml.inc.php');
?>