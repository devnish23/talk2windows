﻿<#
.SYNOPSIS
	Opens the eBay website
.DESCRIPTION
	This script launches the Web browser with the eBay website.
.EXAMPLE
	PS> ./open-ebay-website
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.ebay.com"
exit 0 # success
