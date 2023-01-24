#!/bin/bash
# NOTE: Run from cloned repository folder
sudo apt update 
sudo apt upgrade -y

## Copy dot files
cp ./.tmux.conf ~/.tmux.conf
cat ./.bashrc | sudo tee ~/.bashrc
cat ./.inputrc | sudo tee ~/.inputrc

## Install common tools
sudo apt install -y git && \ 
sudo apt install -y tmux && \
sudo apt install -y unzip && \
sudo apt install -y net-tools && \
sudp apt install -y openjdk-17-jdk openjdk-17-jre
yes | sudo snap install --classic nvim  

## Setup ssh key
SKIP_SSH_KEYGEN=false
if [[ -f ~/.ssh/id_rsa ]];then
        echo "Detected existing ssh keys."
        echo "Skipping ssh-keygen."
        $SKIP_SSH_KEYGEN=true
fi

if [[ $SKIP_SSH_KEYGEN == false ]]; then
        ssh-keygen -b 4096 -N "" -f ~/.ssh/id_rsa
fi

## Git config
git config --global user.name "Michael Bui"
git config --global user.email "michaelbui99@hotmail.com"
git config --global credential.helper store
git config --global commit.gpgsign true
git config --global init.defaultBranch main

## Setup pretty prompt
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh && \
sudo chmod +x /usr/local/bin/oh-my-posh && \
mkdir ~/.poshthemes && \
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip && \
unzip ~/.poshthemes/themes.zip -d ~/.poshthemes && \
chmod u+rw ~/.poshthemes/*.omp.* && \
rm ~/.poshthemes/themes.zip && \ 
cp ./mibui.omp.json ~/.poshthemes/
sudo oh-my-posh font install meslo && \

## VIM 
mkdir ~/.config/nvim && \
cp ./init.lua ~/.config/nvim/init.lua && \

echo << EOF >> ~/.ideavimrc
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
EOF

echo << EOF >> ~/.vimrc
set number
set relativenumber
set ignorecase
set smartcase
set ignorecase
set smartcase
set tabstop=4
set softtabstop=4
set expandtab
EOF
