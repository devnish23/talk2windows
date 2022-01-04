<#
.SYNOPSIS
	Opens the CDC website
.DESCRIPTION
	This PowerShell script launches the Web browser with the CDC website (Centers for Disease Control and Prevention).
.EXAMPLE
	PS> ./open-cdc-website
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.cdc.gov/"
exit 0 # success
