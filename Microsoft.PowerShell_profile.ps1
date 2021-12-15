Import-Module PSReadLine

# Prompt
Import-Module -Name Terminal-Icons
Import-Module oh-my-posh
Set-PoshPrompt -Theme paradox

# Alias
Set-Alias vim nvim

# Functions
function touch {
    Param(
      [Parameter(Mandatory=$true)]
      [string]$Path
    )
  
    if (Test-Path -LiteralPath $Path) {
      (Get-Item -Path $Path).LastWriteTime = Get-Date
    } else {
      New-Item -Type File -Path $Path
    }
  }
