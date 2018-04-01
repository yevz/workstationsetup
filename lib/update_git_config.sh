#!/bin/bash

if [ ! -s ~/.gitconfig ]
then
	echo "Adding gitconfig"
	cat .gitconfig >> ~/.gitconfig
fi
