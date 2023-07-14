#! /bin/sh
set -e

ROOT_USER_FOLDER=~/

# test for stow
if ! command -v stow &> /dev/null
then
    echo "This script needs stow to be executed!"
    exit
fi

echo "linking home directory"
## Symlink config files
stow -v -R --target=$ROOT_USER_FOLDER --dir=./home .

echo "copying nixos dir (needs root permission!)"
sudo cp ./etc/nixos/bootloader.nix /etc/nixos/
sudo cp ./etc/nixos/configuration.nix /etc/nixos/
sudo cp -r ./etc/nixos/users /etc/nixos/
sudo cp -r ./etc/nixos/packages /etc/nixos/
sudo cp -r ./etc/nixos/profiles /etc/nixos/
sudo cp -r ./etc/nixos/services /etc/nixos/
sudo cp -r ./etc/nixos/configurations /etc/nixos/

echo "Sync complete you should do nixos-rebuild switch"
