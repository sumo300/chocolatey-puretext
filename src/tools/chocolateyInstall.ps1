$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'PureText'
  url            = 'https://stevemiller.net/downloads/puretext_5.0_32-bit.zip'
  url64          = 'https://stevemiller.net/downloads/puretext_5.0_64-bit.zip'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  checksum       = 'CEE32A38E7D7A9F047B56D6D06E6DEF9920EEDD35652E2E4217FB8699C2FF129'
  checksumType   = 'sha256'
  checksum64     = 'A8CF0C42A0BC4035627EFB39F3252FF0DB56DEC69C7364E0512B97AE2D52EE3D'
  checksum64Type = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$hr = "="*[System.Console]::WindowWidth
Write-Host $hr
Write-Host " Type `puretext` to run. PureText will run in your system tray."
Write-Host " It can be set to run at system startup in its settings. Enjoy."
Write-Host $hr
