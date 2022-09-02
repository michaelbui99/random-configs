# Install oh-my-posh
winget install JanDeDobbeleer.OhMyPosh -s winget -Force -Scope CurrentUser

# Install posh-git
PowerShellGet\Install-Module posh-git -Force -Scope CurrentUser 

# Install terminal-icons
Install-Module -Name Terminal-Icons -Repository PSGallery -Force -Scope CurrentUser

# Install PSReadLine
Install-Module -Name PSReadLine -Force -Scope CurrentUser

# Copy theme to expected location
$homePath = echo $HOME
cat .\mb.omp.json > $homePath\mb.omp.json
# Copy terminal profile
cat .\Microsoft.PowerShell_profile.ps1 >> $PROFILE