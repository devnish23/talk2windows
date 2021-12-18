<#
.SYNOPSIS
	Opens Google Alerts
.DESCRIPTION
	This PowerShell script launches the Web browser with Google's Alert website.
.EXAMPLE
	PS> ./open-google-alerts
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/alerts"
exit 0 # success
