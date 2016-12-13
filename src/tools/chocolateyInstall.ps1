$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'PureText'
  url            = 'http://stevemiller.net/downloads/puretext_4.0_32-bit.zip'
  url64          = 'http://stevemiller.net/downloads/puretext_4.0_64-bit.zip'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  checksum       = '57A2C8DBD70CB1F8E72DFBA35A64E699A4B8728F91A2702BBDF0C1CC5F4C4F79'
  checksumType   = 'sha256'
  checksum64     = '2AC4685C20CB15CADD54787F9DEFD13F7505F7BE9CFC2F5A1CD0774AE4EEB8D2'
  checksum64Type = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$hr = "="*[System.Console]::WindowWidth
Write-Host $hr
Write-Host " Type `puretext` to run. PureText will run in your system tray."
Write-Host " It can be set to run at system startup in its settings. Enjoy."
Write-Host $hr
