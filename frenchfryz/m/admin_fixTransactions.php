<?
require_once('include/common.inc.php');
$title = 'Fix Transactions';
require_once('include/headhtml.inc.php');

$kids = GetKids();
foreach ($kids as $kid)
{
	$count = UpdateTransactionBalances($kid['KidId'], $log, '2001-01-01');
?>
			<p><? echo $kid['Name'], ': ', $count; ?> transaction(s) updated</p>
			<p><? echo str_replace("\n", '<br />', $log); ?></p>
<?
}

require_once('include/foothtml.inc.php');
?>