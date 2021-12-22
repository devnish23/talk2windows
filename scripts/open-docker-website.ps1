<#
.SYNOPSIS
	Opens the Docker website
.DESCRIPTION
	This PowerShell script launches the Web browser with the Docker website.
.EXAMPLE
	PS> ./open-docker-website
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://www.docker.com/"
exit 0 # success
