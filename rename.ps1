 param (
    [System.IO.FileInfo]$path = $PSScriptRoot,
    [string]$scheme = "scheme-\x"
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
    Get-ChildItem -Path $path |
    Foreach-Object {
        
        Rename-Item -Path $_.FullName -NewName ("test" + $script:count++  + $_.extension)
    }
}

Validate-Path $path
if (!$global:unvalidPath) {
    Rename-All
}


