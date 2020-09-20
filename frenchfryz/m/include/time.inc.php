<?
function GetDateTime($dateTimeString)
{
	return new DateTime($dateTimeString, new DateTimeZone('America/Chicago'));
}
?>