<#
.SYNOPSIS
	Installs Visual Studio Code
.DESCRIPTION
	This PowerShell script installs Visual Studio Code from Microsoft Store.
.EXAMPLE
	PS> ./install-visual-studio-code
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	& "$PSScriptRoot/_reply.ps1" "Installing Visual Studio Code, please wait..."

	& winget install "Visual Studio Code" --source msstore --accept-package-agreements --accept-source-agreements
	if ($lastExitCode -ne "0") { throw "'winget install' failed" }

	& "$PSScriptRoot/_reply.ps1" "Visual Studio Code installed successfully."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
