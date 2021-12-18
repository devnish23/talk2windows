<#
.SYNOPSIS
	Launches Screen Clip
.DESCRIPTION
	This PowerShell script launches the Screen Clip application.
.EXAMPLE
	PS> ./open-screen-clip
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	start-process ms-screenclip:
	exit 0 # success
} catch {
	"⚠️ Error: $($Error[0]) ($($MyInvocation.MyCommand.Name):$($_.InvocationInfo.ScriptLineNumber))"
	exit 1
}
