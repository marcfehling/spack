Write-Host "CURRENT LOCATION: $PSScriptRoot"
Set-Location ../
mkdir scripts
Copy-Item "spack\lib\spack\spack\cmd\installer\scripts\*" "scripts"
Copy-Item "spack\lib\spack\spack\cmd\installer\spack_cmd.bat" "."
Invoke-Expression -Command .\spack_cmd.bat