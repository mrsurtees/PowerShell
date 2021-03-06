##
#  Get Users based on domain
 get-recipient | where {$_.emailaddresses -match "slipstick.com"}
 
 #  Prevent 365 from automatically mapping Mailboxes that a user has permissions to
 Add-MailboxPermission -Identity ahchm@chartis.com -User npatel@chartis.com -AccessRights FullAccess -AutoMapping:$false
 
 # Set Registry via Powershell
 new-item -path HKLM:\software\motive\m-files\10.2.3920.54\client\mfofficeaddin -name outlookaddindisabled - value 0 -force
 
 # List installed apps in a table
 Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName, DisplayVersion, Publisher, InstallDate | 
 Format-Table –AutoSize
 
 # Get current “main” version of IE
$IEVersionString = [System.Diagnostics.FileVersionInfo]::GetVersionInfo("c:\Program Files\Internet Explorer\iexplore.exe").Fileversion
$OutputString = "$Machine $QueryString IE-Version $IEVersionString"
$sep="."
$parts=$IEVersionString.split($sep)

# Parts[0] is the answer:
$parts[0]
 
 # Pin a shortcut to the TaskBar
$shell = new-object -com "Shell.Application" 
$folder = $shell.Namespace('C:\Program Files\Microsoft Office 15\root\office15')   
$item = $folder.Parsename('winword.exe')
$verb = $item.Verbs() | ? {$_.Name -eq 'Pin to Tas&kbar'}
if ($verb) {$verb.DoIt()}

# Mount an ISO
Mount-DiskImage -ImagePath <imagePath>

# Wait for an app to finish/close
$notepad_launch = new-object Diagnostics.ProcessStartInfo
$notepad_launch.FileName = "C:\WINDOWS\system32\notepad.exe"
$notepad_launch.Arguments = $notepad_switches
$notepad_process = [Diagnostics.Process]::Start($notepad_launch)
$notepad_process.WaitForExit()

##





