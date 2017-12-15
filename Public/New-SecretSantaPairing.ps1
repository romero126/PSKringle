


function New-SecretSantaPairing() {
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
)
    #Check if $Script:Paramaters is undefined
    if ($Script:Paramaters.Count -lt 2) {
        Write-Warning "There must be atleast 2 members of the secret santa. "
        return
    }
    #$Script:Paramaters



    $PairingList = new-object System.Collections.ArrayList
    $Script:Paramaters | % {
        $obj = new-object PSObject
        $obj | Add-Member -MemberType NoteProperty -Name Key -Value ([Random]::new().Next(1,10000))
        $obj | Add-Member -MemberType NoteProperty -Name Obj -Value $_
        $PairingList += $obj
    }

    $PairingList = $PairingList | sort Key
    [Array]$PairingList = $PairingList | % { $_.Obj }

    $Script:_PairingList = new-object System.Collections.ArrayList
    foreach ($obj in $PairingList) {
        $index = $PairingList.IndexOf($obj) + 1
        if ($PairingList.Count -eq $index) {
            $index = 0
        }

        #$index
        $obj.IsPaired = $true
        $SS = new-object PSObject
        $SS | Add-Member -MemberType NoteProperty -Name GiftTo -Value $PairingList[$index]
        $SS | Add-Member -MemberType NoteProperty -Name GiftFrom -Value $obj
        
        $Script:_PairingList.Add($SS) | out-null
    }
}