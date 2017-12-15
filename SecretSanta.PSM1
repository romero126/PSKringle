$Public = @( Get-ChildItem -Path $PSScriptRoot\Public\*.ps1 -ErrorAction SilentlyContinue )
$Private = @( Get-ChildItem -Path $PSScriptRoot\Private\*.ps1 -ErrorAction SilentlyContinue )


write-host "Herro World"
foreach ($module in @($Public + $Private)) {
    Try {
        . $module.fullname
    }
    Catch {
        Write-Error "Failed to import function $($module.fullname): $_"
    }
}

Export-ModuleMember -Function $Public.BaseName