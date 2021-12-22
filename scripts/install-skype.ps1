<#
.SYNOPSIS
	Installs Skype
.DESCRIPTION
	This PowerShell script installs Skype from the Microsoft Store.
.EXAMPLE
	PS> ./install-skype
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing Skype from Microsoft Store, please wait..."

	& winget install "Skype" --source msstore --accept-package-agreements --accept-source-agreements

	& "$PSScriptRoot/_reply.ps1" "Skype is installed now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}