<?
$dateStr	= date('F j, Y',  strtotime($_REQUEST["date"]));
?>
<html>
	<head>
		<title>Eugene Sheffer Crossword Puzzle for <? echo $dateStr; ?> - Java</title>
	</head>
	
	<body style="text-align: center">
		<applet code="sheffer.class" codebase="http://sheffer.king-online.com/javaclassfiles" width="512" height="373">
			<param name="release" value="<? echo $dateStr; ?>">
			<param name="file" value="http://sheffer.king-online.com/clues/<? echo $_REQUEST["date"]; ?>.txt">
		</applet>
	</body>
</html>
