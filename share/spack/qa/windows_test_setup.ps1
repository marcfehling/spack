Write-Host "CURRENT LOCATION: $pwd"
$env:SPACK_ROOT="$PWD"
Set-Location ../
Write-Host "CURRENT LOCATION: $pwd"
Write-Host "SPACK ROOT: $env:SPACK_ROOT"
mkdir scripts
Copy-Item "spack\lib\spack\spack\cmd\installer\scripts\*" "scripts"
Copy-Item "spack\lib\spack\spack\cmd\installer\spack_cmd.bat" "."
$env:python_pf_ver="C:\hostedtoolcache\windows\Python\3.9.5\x64\python.exe"
Write-Host "python: $env:python_pf_ver"
Invoke-Expression -Command .\spack_cmd.bat
Write-Host "TEST UTIL"
spack unit-test lib\spack\spack\test\util
#cmd /c ".\spack_cmd.bat" |
#foreach {
#    if ($_ -match "=") {
#        $v = $_.split("=")
#        [Environment]::SetEnvironmentVariable($v[0], $v[1])
#    }
#}
