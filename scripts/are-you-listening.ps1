﻿<#
.SYNOPSIS
	Replies to "Are you listening?"
.DESCRIPTION
	This script replies to 'Are you listening?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./are-you-listening
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Yes.", "Sure.", "Yes, sure.", "Always." | Get-Random
& "$PSScriptRoot/give-reply.ps1" "$Reply"
exit 0 # success