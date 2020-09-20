<?
require_once('include/common.inc.php');
$id = $_REQUEST['id'];
$kid = GetKid($id);
$title = $kid['Name'];
require_once('include/headhtml.inc.php');

$trans = GetTransactions($id);
?>
				<ul data-role="listview">
<?
foreach ($trans as $tran)
{
?>
					<li>
						<a href="tran.php?id=<? echo $tran['TransactionId']; ?>" class="tran">
							<span class="date"><? echo date('m/d/y', $tran['Date']); ?></span>
							<span class="description"><? echo $tran['Description']; ?></span>
							<span class="ui-li-aside amount<? echo $tran['Amount'] < 0 ? 'Neg' : '';
								?>">$<? echo $tran['Amount']; ?></span>
						</a>
					</li>
<?
}
?>
				</ul>
<?
require_once('include/foothtml.inc.php');
?>