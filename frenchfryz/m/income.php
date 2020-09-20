<?
require_once('include/common.inc.php');
$title = 'Add Income';
require_once('include/headhtml.inc.php');

$id = $_REQUEST['id'];
$kid = GetKid($id);
?>
				<form class="autoAjaxForm" action="incomeSave.php" method="POST">
		        	<input type="hidden" name="name" value="<? echo $kid['Name']; ?>" />
		        	<input type="hidden" name="id" value="<? echo $id; ?>" />
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
					<div class="formRow">
						<label for="amount">Amount:</label>
						<div>$ <input type="number" name="amount" step="0.01" /></div>
					</div>
					<input type="submit" value="Add Income for <? echo $kid['Name']; ?>" />
				</form>
<?
require_once('include/foothtml.inc.php');
?>