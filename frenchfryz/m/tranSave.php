<?
require_once('include/common.inc.php');

$id = $_REQUEST['id'];
$date = $_REQUEST['date'];
$description = $_REQUEST['description'];
$incomeAmount = $_REQUEST['incomeAmount'];
$titheAmount = $_REQUEST['titheAmount'];
$savingsAmount = $_REQUEST['savingsAmount'];
$spendingAmount = $_REQUEST['spendingAmount'];

UpdateTransaction($id, $incomeAmount, $titheAmount, $savingsAmount, $spendingAmount, $date, $description);

echo 'Transaction saved';
?>