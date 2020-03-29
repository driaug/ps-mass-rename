function Show-Menu {
    param (
        [string]$title = 'Powershell Mass Rename'
    )
    Clear-Host
    Write-Host "================ $Title ================"
    Write-Host "1: Press '1' for this option."
    Write-Host "2: Press '2' for this option."
    Write-Host "3: Press '3' for this option."
    Write-Host "Q: Press 'Q' to quit."
}

do {
    Show-Menu
    $input = Read-Host "Please make a selection "
    switch ($input)
    {
        '1' {
            Clear-Host
            'You chose option #1'
            #Call hier een andere functie of voer rechtstreeks hier code uit
        } 
        '2' {
            Clear-Host
            'You chose option #2'
            #Call hier een andere functie of voer rechtstreeks hier code uit
        } 
        '3' {
            Clear-Host
            'You chose option #3'
            #Call hier een andere functie of voer rechtstreeks hier code uit
        } 
        'q' {
            return
        }
     }
     pause
}
until ($input -eq 'q')
