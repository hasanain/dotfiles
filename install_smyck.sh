#!/bin/bash

if [[ ! -f "${HOME}/.vim/colors/smyck.vim" ]]; then
    git clone --depth=1 https://github.com/hukl/Smyck-Color-Scheme.git smyck
    cp smyck/smyck.vim "${HOME}/.vim/colors/"
fi
