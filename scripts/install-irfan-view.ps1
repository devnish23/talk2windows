<#
.SYNOPSIS
	Installs IrfanView
.DESCRIPTION
	This PowerShell script installs IrfanView from the Microsoft Store.
.EXAMPLE
	PS> ./install-irfan-view
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing IrfanView from Microsoft Store, please wait..."

	& winget install "IrfanView64" --source msstore --accept-package-agreements --accept-source-agreements

	& "$PSScriptRoot/_reply.ps1" "IrfanView is installed now."

	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
