﻿<#
.SYNOPSIS
	Plays a dog sound
.DESCRIPTION
	This script plays a dog sound.
.EXAMPLE
	PS> ./play-dog-sound
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/play-mp3.ps1" "$PSScriptRoot/../data/sounds/dog.mp3"
exit 0 # success
