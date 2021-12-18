<#
.SYNOPSIS
	Launches Screen Sketch
.DESCRIPTION
	This PowerShell script launches the Screen Sketch application.
.EXAMPLE
	PS> ./open-screen-sketch
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

try {
	start-process ms-screensketch:
	exit 0 # success
} catch {
	"⚠️ Error: $($Error[0]) ($($MyInvocation.MyCommand.Name):$($_.InvocationInfo.ScriptLineNumber))"
	exit 1
}
