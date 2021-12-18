<#
.SYNOPSIS
	Opens Google Translate
.DESCRIPTION
	This PowerShell script launches the Web browser with the Google Translate website.
.EXAMPLE
	PS> ./open-google-translate
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://translate.google.com"
exit 0 # success
