<#
.SYNOPSIS
	Switches to Tab #4
.DESCRIPTION
	This PowerShell script switches to tab #4.
.EXAMPLE
	PS> ./tab-four
.NOTES
	Author:  Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$obj = New-Object -com wscript.shell
	$obj.SendKeys("^4")
	& "$PSScriptRoot/_reply.ps1" "OK."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
