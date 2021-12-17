﻿<#
.SYNOPSIS
	Plays blues music
.DESCRIPTION
	This script launches the Web browser and plays blues music.
.EXAMPLE
	PS> ./play-blues-music
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_launch-browser.ps1" "http://streema.com/radios/play/American_Road_Radio"
exit 0 # success
