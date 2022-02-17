<#
.SYNOPSIS
	Turn Volume Down 
.DESCRIPTION
	This PowerShell script turns the audio volume down by 10%.
.EXAMPLE
	PS> ./turn-volume-down
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([int]$percent = 10)

try {
	$obj = New-Object -com wscript.shell
	for ([int]$i = 0; $i -lt $percent; $i += 2) {
		$obj.SendKeys([char]174) # each tick is -2%
	}
	& "$PSScriptRoot/_reply.ps1" "$($percent)% softer."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
