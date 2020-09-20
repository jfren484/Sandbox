<?
require_once('include/common.inc.php');

$id = $_REQUEST['id'];
$name = $_REQUEST['name'];
$amount = $_REQUEST['amount'];
$date = $_REQUEST['date'];

InsertSavings($id, $amount, $date);

echo 'Savings saved for ', $name;
?>