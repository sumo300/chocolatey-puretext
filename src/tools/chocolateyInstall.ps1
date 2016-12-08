Install-ChocolateyZipPackage -PackageName 'PureText' -Url 'http://stevemiller.net/downloads/puretext_4.0_32-bit.zip' -Url64 'http://stevemiller.net/downloads/puretext_4.0_64-bit.zip' -UnzipLocation "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$hr = "="*[System.Console]::WindowWidth
Write-Host $hr
Write-Host " Type `puretext` to run. PureText will run in your system tray."
Write-Host " It can be set to run at system startup in its settings. Enjoy."
Write-Host $hr
