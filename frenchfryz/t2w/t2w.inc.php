<?
$localFileName = 'data.txt';

$boundaryRegEx = '[*]{20,}?';

copyFileIfNecessary($localFileName, $remoteFileUrl);

$fileContents = str_replace("\r\n", "\n", file_get_contents($localFileName));

$headerRegEx = "/$boundaryRegEx(.*)$boundaryRegEx(.*)$boundaryRegEx/sU";
if (preg_match($headerRegEx, $fileContents, $headerMatches))
{
	$header = trim($headerMatches[1]);
	$toc = trim($headerMatches[2]);
}

$route = explode('/', $_SERVER['PATH_INFO']);
$section = $route[1];

if (isset($section))
{
	preg_match("/$section\.\\s+([^=\\n]+)=?/", $fileContents, $sectionMatches, PREG_OFFSET_CAPTURE, strlen($headerMatches[0]));
	$start = $sectionMatches[0][1];
	$title = trim($sectionMatches[1][0]);

	preg_match("/\\n[^\\n]*(\\n)/", $fileContents, $sectionBodyMatches, PREG_OFFSET_CAPTURE, $start);
	$bodyStart = $sectionBodyMatches[1][1];

	preg_match("/(($boundaryRegEx)|(======))/", $fileContents, $sectionBodyMatches, PREG_OFFSET_CAPTURE, $bodyStart);
	$bodyEnd = count($sectionBodyMatches) == 0 ? strlen($fileContents) : $sectionBodyMatches[0][1] - 1;
	
	$body = trim(substr($fileContents, $bodyStart, $bodyEnd - $bodyStart));
}
else
{
	$title = "Table of Contents";
}
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title><?= $guideName ?> - <?= $title ?></title>
		<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
		<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" rel="stylesheet">
		<style>
			ol ol {
				list-style-type: upper-alpha;
			}
		</style>
	</head>
	<body>
		<div class="container body-content">
<?
if (isset($section))
{
	$body = str_replace("\n", "<br />\n\t\t\t", $body);
?>
			<h3><?= "$section. $title"; ?></h3>
			<p><?= $body ?></p>
<?
}
else
{
?>
			<h3><?= str_replace("\n", "<br />\n\t\t\t\t", $header) ?></h3>
<?
	$tocLines = explode("\n", $toc);
	$tabs = 2;
	$prevLevel = 0;
	foreach ($tocLines as $tocLine)
	{
		preg_match('/^( *)([^.]+)\. +(.+)\s*$/', $tocLine, $tocLineMatches);
		$level = strlen($tocLineMatches[1]) / 3 + 1;
		
		if ($level > $prevLevel)
		{
			echo str_repeat("\t",
				2 * $prevLevel + $tabs + 1),
				"<ol>\n";

			$prevLevel = $level;
		}
		else
		{
			if ($level < $prevLevel)
			{
				echo str_repeat("\t", 2 * $prevLevel + $tabs),
					"</li>\n",
					str_repeat("\t", 2 * $level + $tabs + 1),
					"</ol>\n";

				$prevLevel = $level;
			}

			echo str_repeat("\t", 2 * $level + $tabs),
				"</li>\n";
		}

		echo str_repeat("\t", 2 * $level + $tabs),
			"<li>\n",
			str_repeat("\t", 2 * $level + $tabs + 1),
			"<a href=\"${tocLineMatches[2]}\">${tocLineMatches[3]}</a>\n";
	}
	
	for ($level = $prevLevel; $level > 0; --$level)
	{
		echo str_repeat("\t", 2 * $level + $tabs),
			"</li>\n",
			str_repeat("\t", 2 * $level + $tabs - 1),
			"</ol>\n";
	}
}
?>
		</div>
		<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	</body>
</html>
<?
function exit500($message)
{
	header("HTTP/1.1 500 Internal Server Error");
	exit($message);
}

function copyFileIfNecessary($localFileName, $remoteFileUrl)
{
	if (!file_exists($localFileName)
		|| existingFileNeedsUpdating($localFileName, $remoteFileUrl))
	{
		copy($remoteFileUrl, $localFileName)
			or exit500("failed to retrieve file at '$remoteFileUrl'");
	}
}

function existingFileNeedsUpdating($localFileName, $remoteFileUrl)
{
	$localFileMod = filemtime($localFileName);

	$halfDay = 60 * 60 * 12;
	if (time() - $localFileMod < $halfDay) return false;
	
	$headers = get_headers($remoteFileUrl, 1);
	strstr($headers[0], '200')
		or exit500("Error accessing '$remoteFileUrl'");

	$remoteFileMod = strtotime($headers['Last-Modified']);
	
	return $remoteFileMod > $localFileMod;
}
?>