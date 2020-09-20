<!DOCTYPE html>
<html>
	<head>
		<title>Kid Finances</title>

		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="apple-mobile-web-app-capable" content="yes" />
		<meta name="apple-mobile-web-app-status-bar-style" content="default" />

		<link rel="apple-touch-icon" href="images/logo57x57.png" />
		<link rel="apple-touch-icon" sizes="72x72" href="images/logo72x72.png" />
		<link rel="apple-touch-icon" sizes="114x114" href="images/logo114x114.png" />

		<link rel="stylesheet" type="text/css" href="include/themes/kidFinances.min.css" />
		<link rel="stylesheet" type="text/css" href="http://code.jquery.com/mobile/1.1.0/jquery.mobile.structure-1.1.0.min.css" />
		<link rel="stylesheet" type="text/css" href="include/style.css" type="text/css" media="screen" />

		<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
		<script type="text/javascript">
			$(document).bind('mobileinit', function() {
				$.extend($.mobile, {
					defaultPageTransition: 'slide'
				});
			});
		</script>
		<script type="text/javascript" src="http://code.jquery.com/mobile/1.1.0/jquery.mobile-1.1.0.min.js"></script>
		<script type="text/javascript" src="include/form.js"></script>
	</head>
	<body>
		<div data-role="page" data-theme="a">
			<div data-role="header" data-position="fixed">
<?
$refresh = ($_SERVER['PHP_SELF'] == '/index.php') ? 1 : 0;
$back = ($_SERVER['PHP_SELF'] == '/message.php') ? 0 : ($refresh + 1) % 2;
$style = array('style="display: none;"', '');
?>
				<a <? echo $style[$back]; ?> href="#" data-role="button" data-rel="back" data-icon="back" data-inline="true" data-iconpos="notext"></a>
				<h1><? echo $title; ?></h1>
				<a <? echo $style[$refresh]; ?> href="javascript:window.location.reload();" data-role="button" data-icon="refresh" data-inline="true" data-iconpos="notext"></a>
			</div>
			<div data-role="content">
