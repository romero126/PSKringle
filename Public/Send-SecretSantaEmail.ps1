


function Send-SecretSantaEmail() {
<#
.SYNOPSIS
Add Data to follow
.DESCRIPTION
Add Data to follow
.EXAMPLE
Add Data to follow
.NOTES
Add Data to follow
#>



[CmdletBinding()]
param()
    #Check if $Script:Paramaters is undefined
    if ($Script:_PairingList.Count -eq 0) {
        Write-Warning "You have not added anything to the list"
    }
    throw [System.NotImplementedException]::new();
}