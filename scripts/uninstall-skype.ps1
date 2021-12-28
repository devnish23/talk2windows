<#
.SYNOPSIS
	Uninstalls Skype
.DESCRIPTION
	This PowerShell script uninstalls Skype from the local computer.
.EXAMPLE
	PS> ./uninstall-skype
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Uninstalling Skype, please wait..."

	& winget uninstall "Skype"
	if ($lastExitCode -ne "0") { throw "Can't uninstall Skype, is it installed?" }

	& "$PSScriptRoot/_reply.ps1" "Skype is uninstalled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
