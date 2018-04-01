#!/bin/bash

# Homebrew Script for OSX
# To execute: save and `chmod +x ./Mac-workstationsetup.sh` then `./Mac-workstationsetup.sh`

#Configs
./lib/update_git_config.sh

#Code
./lib/clone_repos.sh

#Installs
./lib/install_packages.sh

