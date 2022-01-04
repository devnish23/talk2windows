<#
.SYNOPSIS
	Plays classical music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays classical music.
.EXAMPLE
	PS> ./play-classical-music
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/KUSC_KDSC"
exit 0 # success
