<?
require_once('include/common.inc.php');
$title = 'Information';
require_once('include/headhtml.inc.php');

$message = $_REQUEST['m'];
?>
				<p><? echo $message; ?></p>
				<a href="/" data-role="button">Ok</a>
<?
require_once('include/foothtml.inc.php');
?>