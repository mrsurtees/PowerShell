#  Get Users based on domain
get-recipient | where {$_.emailaddresses -match “slipstick.com”}

#  Prevent 365 from automatically mapping Mailboxes that a user has permissions to
Add-MailboxPermission -Identity ahchm@chartis.com -User npatel@chartis.com -AccessRights FullAccess -AutoMapping:$false

