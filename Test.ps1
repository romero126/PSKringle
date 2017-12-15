import-module .\*.psm1

Set-SecretSantaSnitch -Name "Joon" -EmailAddress "test@gmail.com"
Add-SecretSantaParticipant -Name "Waffles" -EmailAddress "test@gmail.com"
Add-SecretSantaParticipant -Name "Waffles" -EmailAddress "test@gmail.com"
Add-SecretSantaParticipant -Name "a" -EmailAddress "test@gmail.com"
Add-SecretSantaParticipant -Name "b" -EmailAddress "test@gmail.com"
Add-SecretSantaParticipant -Name "c" -EmailAddress "test@gmail.com"
Add-SecretSantaParticipant -Name "d" -EmailAddress "test@gmail.com"
Add-SecretSantaParticipant -Name "Waffles2" -EmailAddress "test@gmail.com"

write-host "List"
write-host "-----------------------"
write-host "CALL: Get-SecretSanta"
Get-SecretSanta


write-host ""
write-host "Snitch"
write-host "-----------------------"
write-host "CALL: Get-SecretSantaSnitch"
Get-SecretSantaSnitch

write-host ""
write-host "Pairing List"
write-host "-----------------------"
New-SecretSantaPairing | fl

write-host "CALL: Get-SecretSantaPairing"
Get-SecretSantaPairing
#Send-SecretSantaEmail

Get-SecretSanta

write-host ""
write-host "Finished Script"
write-host ""