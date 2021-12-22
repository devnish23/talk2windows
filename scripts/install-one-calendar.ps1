<#
.SYNOPSIS
	Installs One Calendar
.DESCRIPTION
	This PowerShell script installs One Calendar from the Microsoft Store.
.EXAMPLE
	PS> ./install-one-calendar
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing One Calendar from Microsoft Store, please wait..."

	& winget install "One Calendar" --source msstore --accept-package-agreements --accept-source-agreements

	& "$PSScriptRoot/_reply.ps1" "One Calendar is installed now."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}