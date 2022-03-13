<#
.SYNOPSIS
	Opens the maps settings of Windows
.DESCRIPTION
	This PowerShell script launches the maps settings of Windows.
.EXAMPLE
	PS> ./open-maps-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Maps..."
Start-Process ms-settings:maps
exit 0 # success
