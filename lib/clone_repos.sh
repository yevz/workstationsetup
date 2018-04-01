#!/bin/bash

DIR=~/Dev

echo "Enter path of directory to clone codebase into (default: $DIR): "
read user_dir

if [[ !  -z  $user_dir  ]]; then
  if  [ ! -d "$user_dir" ]; then
    echo "Create directory $user_dir"
    mkdir -p $user_dir
  fi
  if [ -d "$user_dir" ]; then
    DIR=$user_dir
  fi
fi

while read repo; do
  echo "Cloning $repo into $DIR"
  cd $DIR/$repo
  git clone git@github.com:$repo.git 
done <repos
