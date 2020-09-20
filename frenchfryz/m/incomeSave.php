<?
require_once('include/common.inc.php');

$id = $_REQUEST['id'];
$name = $_REQUEST['name'];
$amount = $_REQUEST['amount'];
$date = $_REQUEST['date'];
$type = $_REQUEST['type'];
$description = $_REQUEST['description'];

InsertIncome($id, $amount, $date, $type, $description);

echo ucwords($type), ' income saved for ', $name;
?>