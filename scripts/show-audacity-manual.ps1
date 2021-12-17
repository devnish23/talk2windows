﻿<#
.SYNOPSIS
	Shows the Audacity manual
.DESCRIPTION
	This script launches the Web browser with the Audacity online manual.
.EXAMPLE
	PS> ./show-audacity-manual
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_launch-browser.ps1" "https://manual.audacityteam.org/"
exit 0 # success
