<#
.SYNOPSIS
	Sets a random wallpaper
.DESCRIPTION
	This PowerShell script downloads a random photo from Unsplash and sets it as desktop background.
.PARAMETER Category
	Specifies the photo category (beach, city, ...)
.EXAMPLE
	PS> ./next-random-wallpaper 
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$Category = "")

function GetTempDir {
        if ("$env:TEMP" -ne "") { return "$env:TEMP" }
        if ("$env:TMP" -ne "")  { return "$env:TMP" }
        if ($IsLinux) { return "/tmp" }
        return "C:\Temp"
}

try {
	$Reply = "Just a moment.", "Just a second.", "Hold on.", "Hold on a second.", "Wait a moment.", "Wait a second.", "OK." | Get-Random
	& "$PSScriptRoot/_reply.ps1" "$Reply"

	$Path = "$(GetTempDir)/next_wallpaper.jpg"
	& wget -O $Path "https://source.unsplash.com/3840x2160?$Category"
	if ($lastExitCode -ne "0") { throw "Download failed" }

	& "$PSScriptRoot/_set-wallpaper.ps1" -ImageFile "$Path"
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
