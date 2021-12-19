<#
.SYNOPSIS
	Sets a reminder when it's noon
.DESCRIPTION
	This PowerShell script displays a reminder popup message when it's noon.
.EXAMPLE
	PS> ./remind-me-at-noon
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$Noon = Get-Date -Hour 12 -Minute 0 -Second 0

	& "$PSScriptRoot/_set-reminder.ps1" "Now it's noon." "$Noon"
	& "$PSScriptRoot/_reply.ps1" "OK, will do."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
