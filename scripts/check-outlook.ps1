﻿<#
.SYNOPSIS
	Checks Outlook's Inbox 
.DESCRIPTION
	This PowerShell script checks the inbox of Outlook for new mails.
.EXAMPLE
	PS> ./check-outlook
.LINK
	https://github.com/fleschutz/talk2windows
.NOTES
	Author: Markus Fleschutz | License: CC0
#>

try {
	Add-Type -assembly "Microsoft.Office.Interop.Outlook"
	$Outlook = New-Object -comobject Outlook.Application
	$Namespace = $Outlook.GetNameSpace("MAPI")
	$Inbox = $Namespace.GetDefaultFolder(6) # 6 = olFolderInbox
	[int]$Unread = 0
	foreach($Mail in $Inbox.Items) {
		if ($Mail.Unread -eq $true) { $Unread++; $Sender = $Mail.SenderName; $Subject = $Mail.Subject }
	}
	if ($Unread -eq 0) {		$Reply = "No new mails."
	} elseif ($Unread -eq 1) {	$Reply = "One new mail from $Sender regarding $Subject."
	} else {			$Reply = "You've got $Unread new mails."
	}
	& "$PSScriptRoot/_reply.ps1" $Reply
	exit 0 # success
} catch {
	& "$PSScriptRoot/_reply.ps1" "Sorry: $($Error[0])"
	exit 1
}