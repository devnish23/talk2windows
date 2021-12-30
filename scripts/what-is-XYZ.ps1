<#
.SYNOPSIS
	Tells the description of an abbreviation
.DESCRIPTION
	This PowerShell script replies the description of the given abbreviation by text-to-speech (TTS).
.EXAMPLE
	PS> ./what-is-XYZ IAS
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$abbreviation = "")

function Reply { param([string]$Text)
	& "$PSScriptRoot/_reply.ps1" "$Text"
}

try {
	$FoundOne = $false
	$Files = (get-childItem "$PSScriptRoot/../Data/Abbr/*.csv")

	foreach($File in $Files) {
		$Table = import-csv "$File"
		foreach($Row in $Table) {
			if ($Row.Abbreviation -eq $abbreviation) {
				$Basename = (get-item "$File").Basename
				Reply "$($Row.Abbreviation) means $($Row.Definition) in $Basename"
				$FoundOne = $true
			}
		}
	}

	if ($FoundOne -eq $false) { Reply "Sorry, I don't know what '$abbreviation' means." }
	exit 0 # success
} catch {
	Reply "Sorry: $($Error[0])"
	exit 1
}