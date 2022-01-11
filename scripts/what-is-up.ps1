<#
.SYNOPSIS
	Replies to "What's up?"
.DESCRIPTION
	This PowerShell script replies to 'What's up?' by text-to-speech (TTS).
.EXAMPLE
	PS> ./what-is-up.ps1
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$Reply = "Hi there!", "Hey there!", "Hey! How's it going?", "What's happening?", "How goes it?" | Get-Random

& "$PSScriptRoot/_reply.ps1" "$Reply"
exit 0 # success
