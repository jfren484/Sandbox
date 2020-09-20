<?
require_once('include/common.inc.php');

$date = $_REQUEST['date'];
$tithes = $_REQUEST['tithes'];

InsertTithes($date, $tithes);

echo 'Tithe saved for ', date('Y-m-d', strtotime($date));
?>