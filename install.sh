#!/bin/zsh
git clone https://github.com/gnuh/gnuh.vim ~/.config/nvim
npm install -g typescript typescript-language-server vscode-langservers-extracted emmet-ls
git clone https://github.com/sumneko/lua-language-server ~/.config/sumneko
cd ~/.config/sumneko
git submodule update --init --recursive
cd 3rd/luamake
./compile/install.sh
cd ../..
./3rd/luamake/luamake rebuild
cd ~/.config/nvim
nvim
