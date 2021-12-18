<#
.SYNOPSIS
	Opens the Discord website
.DESCRIPTION
	This PowerShell script launches the Web browser with the Discord website.
.EXAMPLE
	PS> ./open-discord-website
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://discord.com/"
exit 0 # success
