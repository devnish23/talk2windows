<#
.SYNOPSIS
	Plays dance music
.DESCRIPTION
	This PowerShell script launches the Web browser and plays dance music.
.EXAMPLE
	PS> ./play-dance-music.ps1
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
& "$PSScriptRoot/open-browser.ps1" "http://streema.com/radios/play/D100_Radio"
exit 0 # success
