#!/bin/bash

declare -a files=(
	".vimrc"
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
