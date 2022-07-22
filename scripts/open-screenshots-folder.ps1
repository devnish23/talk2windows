<#
.SYNOPSIS
	Opens the user's screenshots folder
.DESCRIPTION
	This PowerShell script launches the File Explorer with the user's screenshots folder.
.EXAMPLE
	PS> ./open-screenshots-folder
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	$Path = Resolve-Path "$HOME/Pictures/Screenshots"
	if (-not(Test-Path "$Path" -pathType container)) {
		throw "Screenshots folder at $Path doesn't exist (yet)"
	}
	& "$PSScriptRoot/open-file-explorer.ps1" "$Path"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}