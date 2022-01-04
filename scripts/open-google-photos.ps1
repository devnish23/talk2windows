<#
.SYNOPSIS
	Opens Google Photos
.DESCRIPTION
	This PowerShell script launches the Web browser with the Google Photos website.
.EXAMPLE
	PS> ./open-google-photos
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "https://photos.google.com"
exit 0 # success
