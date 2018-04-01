#!/bin/bash

DIR=~/Dev

echo "Enter path of directory to clone codebase into (default: $DIR): "
read user_dir


if [ -d "$user_dir" ]; then
  DIR=$user_dir
fi

while read repo; do
  echo "Updating $repo into $DIR"
  cd $DIR
  git pull --rebease
done <repos

