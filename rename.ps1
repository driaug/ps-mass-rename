 param (
    [System.IO.FileInfo]$path = $PSScriptRoot,
    [string]$scheme = "rename",
    [string]$extension,
    [switch]$verbose=$false
 )

$global:unvalidPath = $false

function Validate-Path{
    param (
        [ValidateScript({
            if(-Not ($_ | Test-Path) ){
                $global:unvalidPath = $true
                throw "NonExistent"
            } 
            if(($_ | Test-Path -PathType Leaf) ){
                $global:unvalidPath = $true
                throw "NotAllowed"
            }
            return $true

        })]
        [System.IO.FileInfo]$path = $PSScriptRoot
    )
}

function Rename-All{
    $count = 1
    if ($extension) {
        Get-ChildItem -Path $path | 
        Where-Object {$_.Extension -eq $extension} |
        Foreach-Object {
            $prev = $_.FullName
            $new = Rename-Item -Path $_.FullName -NewName ($scheme + $script:count++  + $_.extension) -PassThru
            if ($verbose) {
                Write-Host "$prev => $new"
            }
        }   
    } else {
        Get-ChildItem -Path $path |
        Foreach-Object {
            $prev = $_.FullName
            $new = Rename-Item -Path $_.FullName -NewName ($scheme + $script:count++  + $_.extension) -PassThru
            if ($verbose) {
                Write-Host "$prev => $new"
            }
        }   
    }

}

Validate-Path $path
if (!$global:unvalidPath) {
    Rename-All
}


