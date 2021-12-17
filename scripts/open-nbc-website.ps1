﻿<#
.SYNOPSIS
	Opens the NBC website
.DESCRIPTION
	This script launches the Web browser with the NBC website.
.EXAMPLE
	PS> ./open-nbc-website
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_launch-browser.ps1" "https://www.nbc.com/"
exit 0 # success
