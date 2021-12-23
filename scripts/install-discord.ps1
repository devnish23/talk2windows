<#
.SYNOPSIS
	Installs Discord
.DESCRIPTION
	This PowerShell script installs Discord from the Microsoft Store.
.EXAMPLE
	PS> ./install-discord
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing Discord from Microsoft Store, please wait..."

	& winget install "Discord" --source msstore --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/_reply.ps1" "Discord installation completed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
