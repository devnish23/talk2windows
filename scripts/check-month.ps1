﻿<#
.SYNOPSIS
	Say the current month name
.DESCRIPTION
	This script speaks the current month name by text-to-speech (TTS).
.EXAMPLE
	PS> ./check-month
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	[system.threading.thread]::currentthread.currentculture = [system.globalization.cultureinfo]"en-US"
	$MonthName = (Get-Date -UFormat %B)

	& "$PSScriptRoot/give-reply.ps1" "It's $MonthName."
	exit 0 # success
} catch {
	"⚠️ Error: $($Error[0]) ($($MyInvocation.MyCommand.Name):$($_.InvocationInfo.ScriptLineNumber))"
	exit 1
}