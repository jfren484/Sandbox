<?
require_once('include/common.inc.php');

$date = $_REQUEST['date'];
$description = $_REQUEST['description'];
$spent = $_REQUEST['spent'];

InsertSpendings($date, $description, $spent);

echo 'Spending saved for ', date('Y-m-d', strtotime($date));
?>