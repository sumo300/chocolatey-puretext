## IMPORTANT - REPO MOVED

Code for this package has moved to a repo that automatically updates any time a new version of PureText is released.

https://github.com/sumo300/chocolatey-packages-au

## Steve Miller's PureText Chocolatey Package

This is the code I use to publish the PureText package to Chocolatey. 

 1. Follow the instructions on [chocolatey.org](http://chocolatey.org/) to setup Chocolatey
 2. Clone this repository and navigate to the folder in PowerShell
 3. `Build.ps1` to create the package
 4. `choco install puretext -Source "full-directory-path"` to install it locally

And you're done!

## PureText has been updated! Help!

When a new release of PureText is out in the wild, updating this package is easy:

 1. Fork this repository to your local environment
 2. Open `src\tools\chocolateyInstall.ps1` and update the URL as necessary
 3. Open `src\puretext.nuspec` and modify the following properties:
 
    1. version - Set to match the version of PureText
    2. releaseNotes - Set to URL of release notes for new version

 4. Commit the changes to a branch and push it to your fork
 5. Submit a pull request

After I merge the pull request, I'll publish a new release to Chocolatey so they can review it.
