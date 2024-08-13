#!/bin/bash

red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'

cur_dir=$(pwd)

# check root
[[ $EUID -ne 0 ]] && echo -e "${red}Fatal error: ${plain} Please run this script with root privilege \n " && exit 1

# Check OS and set release variable
if [[ -f /etc/os-release ]]; then
    source /etc/os-release
    release=$ID
elif [[ -f /usr/lib/os-release ]]; then
    source /usr/lib/os-release
    release=$ID
else
    echo "Failed to check the system OS, please contact the author!" >&2
    exit 1
fi
echo "The OS release is: $release"

arch() {
    case "$(uname -m)" in
    x86_64 | x64 | amd64) echo 'amd64' ;;
    i*86 | x86) echo '386' ;;
    armv8* | armv8 | arm64 | aarch64) echo 'arm64' ;;
    armv7* | armv7 | arm) echo 'armv7' ;;
    armv6* | armv6) echo 'armv6' ;;
    armv5* | armv5) echo 'armv5' ;;
    s390x) echo 's390x' ;;
    *) echo -e "${green}Unsupported CPU architecture! ${plain}" && rm -f install.sh && exit 1 ;;
    esac
}

echo "arch: $(arch)"

install_base() {
    case "${release}" in
    ubuntu | debian | armbian)
        apt-get update && apt-get install -y -q wget curl tar 
        ;;
    centos | almalinux | rocky | oracle)
        yum -y update && yum install -y -q wget curl tar 
        ;;
    fedora)
        dnf -y update && dnf install -y -q wget curl tar 
        ;;
    arch | manjaro | parch)
        pacman -Syu && pacman -Syu --noconfirm wget curl tar 
        ;;
    opensuse-tumbleweed)
        zypper refresh && zypper -q install -y wget curl tar timezone
        ;;
    *)
        apt-get update && apt install -y -q wget curl tar 
        ;;
    esac
}

install_web_app(){
    echo "Install NodeJS and NPM using nvm..."
    echo "Installing nvm..."
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

    # activate nvm
    . ~/.nvm/nvm.sh

    # install node
    nvm install node

    # Kiểm tra
    echo "Node version:"
    node -v
    echo "NPM version:"
    npm -v

    # Install Git and clone repository from GitHub
    echo "Install Git and clone repository from GitHub"
    echo "Install Git..."

    # install on Ubuntu/Debian
    sudo apt-get update -y
    sudo apt-get install git -y

    # check
    echo "Git version:"
    git --version

    # Clone repository from GitHub
    echo "Cloning repository from GitHub..."
    git clone https://github.com/linux-vps/testbitrix24.git

    echo "Installing nano..."
    sudo apt install nano -y

    echo "Installing pm2..."
    pm2 stop all
    npm install pm2 -g && pm2 update
    pm2 stop all

    # Navigate to the testbitrix24 folder
    cd testbitrix24

}