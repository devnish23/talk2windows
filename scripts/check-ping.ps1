<#
.SYNOPSIS
	Checks the Ping Time
.DESCRIPTION
	This PowerShell script checks the ping latency from the local computer to selected Internet hosts.
	The hosts by default are: amazon.com,bing.com,cnn.com,dropbox.com,facebook.com,google.com,live.com,twitter.com,youtube.com
.PARAMETER hosts
	Specifies the hosts to check (separated by comma)
.EXAMPLE
	PS> ./check-ping
.NOTES
	Author: Markus Fleschutz / License: CC0
.LINK
	https://github.com/fleschutz/talk2windows
#>

param([string]$hosts = "amazon.com,bing.com,cnn.com,dropbox.com,facebook.com,google.com,live.com,twitter.com,youtube.com")

try {
	& "$PSScriptRoot/_reply.ps1" "Sending a ping to 9 internet hosts..."

	$HostsArray = $hosts.Split(",")
	$Pings = test-connection -count 1 -computerName $HostsArray

	[int]$Min = 9999999
	[int]$Max = 0
	[int]$Avg = 0
	foreach($Ping in $Pings) {
		if ($IsLinux) {
			[int]$Latency = $Ping.latency
		} else {
			[int]$Latency = $Ping.ResponseTime
		}
		if ($Latency -lt $Min) { $Min = $Latency }
		if ($Latency -gt $Max) { $Max = $Latency }
		$Avg += $Latency
	}
	$Avg = $Avg / $Pings.count

	& "$PSScriptRoot/_reply.ps1" "Ping is $($Avg)ms average, ($($Min)ms min, $($Max)ms max."
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}
