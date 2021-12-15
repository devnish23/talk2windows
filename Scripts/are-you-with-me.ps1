﻿<#
.SYNOPSIS
	Replies to "Are you with me?"
.DESCRIPTION
	This script replies to 'Are you with me?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./are-you-with-me
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Yes.", "Sure.", "Yes, sure.", "Always." | Get-Random
& "$PSScriptRoot/give-reply.ps1" "$Reply"
exit 0 # success