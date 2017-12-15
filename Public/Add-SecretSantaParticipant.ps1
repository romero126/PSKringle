


function Add-SecretSantaParticipant() {
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
param(
    #Param help desc
    [Parameter(Mandatory)]
    [string] $Name,
    #[Parameter(Mandatory)]
    [string] $EmailAddress,
    [bool] $isPaired
)
    #Check if $Script:Paramaters is undefined
    if ($Script:Paramaters.Count -eq 0) {
        $Script:Paramaters = new-object System.Collections.ArrayList
    }
    $obj = new-object PSObject
    $obj | Add-Member -MemberType NoteProperty -Name Name -Value $Name
    $obj | Add-Member -MemberType NoteProperty -Name EmailAddress -Value $EmailAddress
    $obj | Add-Member -MemberType NoteProperty -Name isPaired -Value $false
    $obj | add-member scriptmethod tostring { $this.Name } -force 
    if ($Script:Paramaters.Name -contains $Name) {
        Write-Warning "Duplicate Name already exists in this list."
    } else {
        $Script:Paramaters.Add($obj) | out-null
    }
}