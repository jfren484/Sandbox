<?
define('URL_STRING', 'http://sheffer.king-online.com/images/puzzle_print/Shef_%s.gif');

function UrlExists($url)
{
	$exists	= false;

	$handle	= @fopen($url, 'r');
	if ($handle !== false)
	{
		$exists	= true;
		fclose($handle);
	}

	return $exists;
}

function GetNextDate($startDate)
{
	if (!isset($startDate))
		$date	= strtotime("-1 month");
	else
		$date	= strtotime("+1 day", $startDate);

	if (date('w', $date) == '0')
		$date	= strtotime("+1 day", $date);

	return $date;
}
?>
<html>
	<head>
		<title>Eugene Sheffer Crossword Puzzles</title>
		<style>
			td
			{
				padding:			0px, 10px;
			}
			td.today
			{
				font-weight:	bold;
			}
		</style>
	</head>
	
	<body onload="window.location='#bottom'">
		<table border="1" cellspacing="1" cellpadding="0">
<?
$today		= date('Ymd');

$curDate	= GetNextDate(NULL);
$date			= date('Ymd', $curDate);
$url			= sprintf(URL_STRING, $date);

while (UrlExists($url))
{
?>
			<tr>
				<td<? if ($date == $today) echo ' class="today"'; ?>><? echo date('l, F j, Y', $curDate); ?></td>
				<td><a href="<? echo $url; ?>" target="_blank">Print</a></td>
				<td><a href="crossjava.php?date=<? echo $date; ?>">Java</a></td>
			</tr>
<?
	if (date('w', $curDate) == '6')
	{
?>
			<tr>
				<td colspan="3">&nbsp;</td>
			</tr>
<?
	}
	
	$curDate	= GetNextDate($curDate);
	$date			= date('Ymd', $curDate);
	$url			= sprintf(URL_STRING, $date);
}
?>
		</table>
		<a name="bottom" />
	</body>
</html>