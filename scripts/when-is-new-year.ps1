<#
.SYNOPSIS
	Answers to 'When is New Year?"
.DESCRIPTION
	This PowerShell script checks the time until New Year and replies by text-to-speech (TTS).
.EXAMPLE
	PS> ./when-is-new-year
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	$Now = [DateTime]::Now
	$NewYear = [Datetime]("12/31/" + $Now.Year)
	$Days = ($NewYear - $Now).Days + 1
	if ($Days -gt 1) {
		& "$PSScriptRoot/_reply.ps1" "New Year is in $Days days."
	} elseif ($Days -eq 1) {
		& "$PSScriptRoot/_reply.ps1" "New Year is tomorrow."
	}
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}