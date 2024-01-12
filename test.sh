#!/bin/bash

# docsy_install.sh
# This script automates the installation of a clean Hugo site with the Docsy theme.
# It creates the 'sys_docs' site, initializes a Git repository, adds Docsy as a submodule,
# updates the site configuration, and installs npm packages.

RED='\033[0;31m'
YLLW='\033[0;33m'
NC='\033[0m\n'

print_message() {
    printf "${RED}$1${NC}"
    sleep 3
}

print_message "**** SYSLOGINE DOCS ****"
print_message "**** let's create sys_docs with hugo ****"
hugo new site sys_docs || exit 1

print_message "**** enter sys_docs site ****"
cd sys_docs || exit 1
sleep 3

print_message "**** create git init ****"
git init || exit 1
sleep 3

print_message "**** download docsy theme as submodule ****"
THEME_REPO="https://github.com/Syslogine/docsy"
git submodule add "$THEME_REPO" themes/docsy || exit 1
sleep 3

print_message "**** add doscy as theme in config ****"
echo "theme = 'docsy'" >> config.toml || exit 1
sleep 3

print_message "**** now we go to doscy theme folder ****"
cd themes/docsy || exit 1
sleep 3

print_message "**** to be sure ****"
if ! npm install; then
    echo "Error: npm install failed."
    exit 1
fi
sleep 3

print_message "**** needs funding ****"
npm fund || exit 1
sleep 3

print_message "**** go back to sys_docs folder ****"
cd ../..
