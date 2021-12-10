# nvim-init.vim

## Init
$HOME = ~/. 

```cli
cd ~/.
```
```cli
mkdir .config/nvim
```
```cli
git clone https://github.com/michaelbui99/nvim-init.vim.git
```

## Vim plug (Windows, Powershell, neovim)
```cli
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:HOME))/.config/nvim/plug.vim" -Force
```
