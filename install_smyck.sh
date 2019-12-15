#!/bin/bash

if [[ ! -f "${HOME}/.vim/colors/smyck.vim" ]]; then
    git clone --depth=1 https://github.com/hukl/Smyck-Color-Scheme.git smyck
    mkdir -p "${HOME}/.vim/colors"
    cp smyck/smyck.vim "${HOME}/.vim/colors/"
    rm -rf smyck
fi
