<#
.SYNOPSIS
	Enables the god mode
.DESCRIPTION
	This PowerShell script enables the god mode. It adds a new icon to the desktop.
.EXAMPLE
	PS> ./enable-god-mode
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	$GodModeSplat = @{
		Path = "$HOME\Desktop"
		Name = "GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}"
		ItemType = 'Directory'
	}
	$null = new-item @GodModeSplat

	& "$PSScriptRoot/_reply.ps1" "God mode is enabled now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
