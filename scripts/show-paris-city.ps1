<#
.SYNOPSIS
	Shows Paris city in Google Maps 
.DESCRIPTION
	This PowerShell script launches the Web browser with Google Maps at Paris city (France).
.EXAMPLE
	PS> ./show-paris-city
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.google.com/maps/place/Paris"
exit 0 # success
