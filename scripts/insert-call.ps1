﻿<#
.SYNOPSIS
	Inserts a Call?
.DESCRIPTION
	This PowerShell script inserts a call? Unicode character.
.EXAMPLE
	PS> ./insert-call
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$OutputEncoding = [console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding
	
	Set-Clipboard -value "📞❓"

	$obj = New-Object -com wscript.shell
	$obj.SendKeys("^V")
	& "$PSScriptRoot/_reply.ps1" "Okay."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
