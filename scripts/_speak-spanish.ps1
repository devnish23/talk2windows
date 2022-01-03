﻿<#
.SYNOPSIS
	Speaks Spanish
.DESCRIPTION
	This PowerShell script speaks the given text with a Spanish text-to-speech (TTS) voice.
.PARAMETER text
	Specifies the text to speak
.EXAMPLE
	PS> ./_speak-spanish Hola
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$text = "")

try {
	$TTSVoice = New-Object -ComObject SAPI.SPVoice
	foreach ($Voice in $TTSVoice.GetVoices()) {
		if ($Voice.GetDescription() -like "*- Spanish*") { continue }
			$TTSVoice.Voice = $Voice
			[void]$TTSVoice.Speak($text)
			exit 0 # success
		}
	}
	throw "No Spanish text-to-speech voice found - please install one."
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
