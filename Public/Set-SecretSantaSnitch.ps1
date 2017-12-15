


function Set-SecretSantaSnitch() {
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
    [Parameter(Mandatory)]
    [string] $EmailAddress
)
    #Check if $Script:Paramaters is undefined
    if ($Script:Paramaters.Count -eq 0) {
        $Script:Paramaters = new-object System.Collections.ArrayList
    }
    $obj = new-object PSObject
    $obj | Add-Member -MemberType NoteProperty -Name Name -Value $Name
    $obj | Add-Member -MemberType NoteProperty -Name EmailAddress -Value $EmailAddress
    $obj | add-member scriptmethod tostring { 'he is a {0}, he is' -f $this.Name } -force 
    $Script:Snitch = $obj
}