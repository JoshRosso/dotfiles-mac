#!/bin/bash

# setup brew and brew cask
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/cask

# command-line programs to install with brew
declare -a brews=(
	"awscli" 
	"bash" 
	"bash-completion"
	"ctags"
	"docker"
	"git"
	"gnupg"
	"go"
	"jq"
	"kubernetes-cli"
	"vim --with-cscope --with-python --with-lua --override-system-vim"
	"the_silver_searcher"
	"pass"
	"tmux"
	"openssl"
	"reattach-to-user-namespace"
	"vim"
	"wget"
)

# GUI programs to install with brew cask
declare -a casks=(
	"bartender" 
	"docker" 
	"google-chrome" 
	"iterm2" 
	"java" 
	"signal" 
	"slack" 
	"spectacle" 
	"spotify" 
	"vagrant" 
	"zoomus" 
	"1password" 
	"visual-studio-code"
)

# run installation of command-line programs
for i in "${brews[@]}"
do
   brew install $i
done

# run installation of GUI programs
for i in "${casks[@]}"
do
   brew cask install $i
done

# install junegunn/vim-plugged
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
