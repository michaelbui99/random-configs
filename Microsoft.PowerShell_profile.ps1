Import-Module PSReadLine
Set-PSReadlineOption -PredictionSource History
Set-PSReadLineKeyHandler -Chord "CTRL+j" -Function NextHistory
Set-PsReadLineKeyHandler -Chord "CTRL+k" -Function PreviousHistory
Set-PsReadLineKeyHandler -Chord "CTRL+l" -Function AcceptSuggestion
Set-PSReadLineOption -PredictionViewStyle List

# Prompt
Import-Module -Name Terminal-Icons
Import-Module posh-git
oh-my-posh init pwsh --config $env:POSH_THEMES_PATH/nordtron.omp.json | Invoke-Expression

# Alias
Set-Alias vim nvim
Set-Alias grep findstr
Set-Alias ll ls

# Functions
function touch {
  Param(
    [Parameter(Mandatory = $true)]
    [string]$Path
  )
  
  if (Test-Path -LiteralPath $Path) {
      (Get-Item -Path $Path).LastWriteTime = Get-Date
  }
  else {
    New-Item -Type File -Path $Path
  }
}

function which($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue | 
  Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
