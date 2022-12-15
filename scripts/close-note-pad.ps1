<#
.SYNOPSIS
	Closes Notepad
.DESCRIPTION
	This PowerShell script closes the Notepad application gracefully.
.EXAMPLE
	PS> ./close-note-pad
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

& "$PSScriptRoot/_reply.ps1" "Okay."
& "$PSScriptRoot/close-program.ps1" "Notepad" "notepad" "notepad"
exit 0 # success
