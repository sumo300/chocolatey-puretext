$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'PureText'
  url            = 'https://stevemiller.net/downloads/puretext_4.0_32-bit.zip'
  url64          = 'https://stevemiller.net/downloads/puretext_4.0_64-bit.zip'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  checksum       = '5BDBAB769A04C45E1AC1E184FC91F9B97BBB2B61AB1CDE07B7D4726FAEA374A5'
  checksumType   = 'sha256'
  checksum64     = '5BDBAB769A04C45E1AC1E184FC91F9B97BBB2B61AB1CDE07B7D4726FAEA374A5'
  checksum64Type = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$hr = "="*[System.Console]::WindowWidth
Write-Host $hr
Write-Host " Type `puretext` to run. PureText will run in your system tray."
Write-Host " It can be set to run at system startup in its settings. Enjoy."
Write-Host $hr
