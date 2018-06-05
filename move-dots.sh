#!/bin/bash

declare -a files=(
	".vimrc"
	".tmux.conf"
	".vim"
	".ssh"
	".gitconfig"
	".bashrc"
	".bash_profile"
)

for i in "${files[@]}"
do
   cp -rv $i ~/
done
