


function Get-SecretSantaSnitch() {
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
    if ($Script:Paramaters.Count -eq 0) {
        Write-Warning "You have not added anything to the list"
    }
    return "Object Output: Get-SecretSantaSnitch", $Script:Snitch
}