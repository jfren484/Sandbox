<?
require_once('include/common.inc.php');

$date = $_REQUEST['date'];
$type = $_REQUEST['type'];
$description = $_REQUEST['description'];
$incomes = $_REQUEST['incomes'];

InsertIncomes($date, $type, $description, $incomes);

echo ucwords($type), ' income saved for ', date('Y-m-d', strtotime($date));
?>