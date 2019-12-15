#!/bin/bash

# init plugins path
VIM_START_PATH="${HOME}/.vim/pack/gitplugins/start"
if [ ! -f $VIM_START_PATH ]; then
    mkdir -p ~/.vim/pack/git-plugins/start
fi

echo "Installing ale..."
ALE_PATH="${VIM_START_PATH}/ale"
if [ ! -f $ALE_PATH ]; then
    rm -rf $ALE_PATH
fi

git clone --depth 1 https://github.com/dense-analysis/ale.git "${ALE_PATH}"

echo "Installing ctrlp..."
CTRLP_PATH="${VIM_START_PATH}/ctrlp.vim"
if [ ! -f $CTRLP_PATH ]; then
    rm -rf $CTRLP_PATH
fi
git clone --depth 1 https://github.com/kien/ctrlp.vim.git "${CTRLP_PATH}"

cp .vimrc ${HOME}/.vimrc
