﻿<#
.SYNOPSIS
	Shows the Serenade manual
.DESCRIPTION
	This script launches the Web browser with the Serenade manual.
.EXAMPLE
	PS> ./show-serenade-manual
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://serenade.ai/docs/"
exit 0 # success
