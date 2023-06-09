﻿<#
.SYNOPSIS
	Copy the Selection
.DESCRIPTION
	This PowerShell script copies the selection.
.EXAMPLE
	PS> ./copy
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

$obj = New-Object -com wscript.shell
$obj.SendKeys("^C")
& "$PSScriptRoot/_reply.ps1" "Copied."
exit 0 # success