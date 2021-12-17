﻿<#
.SYNOPSIS
	Shows Frankfurt city in Google Maps 
.DESCRIPTION
	This script launches the Web browser with Google Maps at Frankfurt city (Germany).
.EXAMPLE
	PS> ./show-frankfurt-city
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_launch-browser.ps1" "https://www.google.com/maps/place/Frankfurt"
exit 0 # success
