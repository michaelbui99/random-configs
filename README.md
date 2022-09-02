# Setup

-   Clone repo

```cli
git clone https://github.com/michaelbui99/terminal-configs.git
```

-   Navigate to /terminal-configs

```cli
cd .\terminal-configs
```

-   Run setup_terminal_windows

```cli
.\setup_terminal_windows.ps1
```

# nvim-init.vim

## Alias (powershell)

Such that you can type vim "filename" instead of nvim "filename"

```cli
Set-Alias vim nvim
```

## Init

$HOME = ~/.

```cli
cd ~/.AppData/Local
```

```cli
mkdir nvim
vim init.vim
```

```cli
git clone https://github.com/michaelbui99/nvim-init.vim.git
```

## Vim plug (Windows, Powershell, neovim)

```cli
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force

```

## .ideavimrc

```vim
set number
set relativenumber
set ideajoin
set ignorecase
set smartcase
set ignorecase
set smartcase
set tabstop=4
set softtabstop=4
set expandtab


```
