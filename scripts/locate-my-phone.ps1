<#
.SYNOPSIS
	Opens Google Find My Device 
.DESCRIPTION
	This PowerShell script launches the Web browser with the Google Find My Device website.
.EXAMPLE
	PS> ./locate-my-phone
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/android/find"
exit 0 # success
