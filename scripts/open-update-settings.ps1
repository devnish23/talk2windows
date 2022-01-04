<#
.SYNOPSIS
	Opens Windows Update settings 
.DESCRIPTION
	This PowerShell script launches the Windows Update settings.
.EXAMPLE
	PS> ./open-update-settings
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

Start-Process ms-settings:windowsupdate
exit 0 # success
