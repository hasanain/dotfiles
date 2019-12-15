#!/bin/bash
unameOut="$(uname -s)"

case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

echo "Enviroment detected ${machine}"

common_packages=("tmux")

if [ "$machine" == "Mac" ]
then
    xcode-select --install;
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
    package="brew"
elif [ "$machine" == "Linux" ]
then
   sudo apt update;
   sudo apt upgrade;
   pacakge="sudo apt"
else
   >&2 echo "Unsupported Enviroment"
   exit 1
fi

./init_vim.sh
