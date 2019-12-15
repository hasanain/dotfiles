#!/bin/bash

# init plugins path
VIM_START_PATH="${HOME}/.vim/pack/gitplugins/start"
if [ ! -f $VIM_START_PATH ]; then
    echo "creating start folder"
    mkdir -p $VIM_START_PATH
fi

function install {
    echo "installing $1..."
    PLUGIN_NAME=$(basename $1)
    PLUGIN_PATH="${VIM_START_PATH}/$PLUGIN_NAME"
    if [[ -f $PLUGIN_PATH ]]; then
        git clone --depth 1 https://github.com/$1.git "${PLUGIN_PATH}"
    else
        echo "$1 already installed. skipping..."
    fi
}

PLUGIN_LIST=("dense-analysis/ale" "kien/ctrlp.vim" "prettier/vim-prettier" "tpope/vim-unimpaired")
for p in "${PLUGIN_LIST[@]}"; do
    install $p
done

if [ -f "${HOME}/.vimrc" ]; then
    echo "copying old .vimrc to .vimrc_old"
    cp ${HOME}/.vimrc ${HOME}/.vimrc_old_$(date +%s%N)
    rm ${HOME}/.vimrc
fi

./install_smyck.sh

echo "linking the ${HOME}/.vimrc to $(pwd)/.vimrc"
ln -s $(pwd)/.vimrc ${HOME}/.vimrc
