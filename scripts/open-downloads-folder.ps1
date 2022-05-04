<#
.SYNOPSIS
	Opens the user's downloads folder
.DESCRIPTION
	This PowerShell script launches the File Explorer showing the user's downloads folder.
.EXAMPLE
	PS> ./open-downloads-folder
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	$Path = (New-Object -ComObject Shell.Application).NameSpace('shell:Downloads').Self.Path
	if (-not(Test-Path "$Path" -pathType container)) {
		throw "Downloads folder at $Path doesn't exist (yet)"
	}
	& "$PSScriptRoot/open-file-explorer.ps1" $Path
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
