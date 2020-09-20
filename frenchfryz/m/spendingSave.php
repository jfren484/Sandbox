<?
require_once('include/common.inc.php');

$id = $_REQUEST['id'];
$name = $_REQUEST['name'];
$amount = $_REQUEST['amount'];
$date = $_REQUEST['date'];
$description = $_REQUEST['description'];

InsertSpending($id, $amount, $date, $description);

echo 'Spending saved for ', $name;
?>