

Test-Path putty-64bit-0.79-installer\*.msi
Test-Path putty_localhost\*.reg



Stop-Process -Name "Putty"

msiexec /i .\putty-64bit-0.79-installer.msi /qn

Get-Process | Where-Object {$_.ProcessName -like "*Putty*"}

$registryPath = "tty-64bit-0.79-installer.msi"

 if (Test-Path $registryPath) {

     Write-Host "Der Registry-Schlüssel für die Session 'Localhost' existiert."

 } else {

     Write-Host "Der Registry-Schlüssel für die Session 'Localhost' existiert nicht."

 }
