<?
require_once('include/common.inc.php');
$title = 'Add Tithe';
require_once('include/headhtml.inc.php');

$nextTitheDate = GetNextTitheDate();
$kids = GetKidsTithes($nextTitheDate);
?>
		        <form class="autoAjaxForm" action="titheSave.php" method="POST">
					<fieldset data-role="controlgroup">
						<input type="date" name="date" value="<? echo date('Y-m-d', $nextTitheDate); ?>" />
					</fieldset>
<?
foreach ($kids as $kid)
{
?>
					<div class="formRow">
						<label for="tithes[<? echo $kid['KidId']; ?>]"><? echo $kid['Name']; ?>:</label>
						<div>$ <input type="number" name="tithes[<? echo $kid['KidId']; ?>]"
							value="<? echo $kid['TitheBalance']; ?>" step="0.01" /></div>
					</div>
<?
}
?>
					<input type="submit" value="Add Tithe" />
				</form>
<?
require_once('include/foothtml.inc.php');
?>