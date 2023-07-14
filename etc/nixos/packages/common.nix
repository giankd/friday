{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # Web
    firefox

    # Terminal
    alacritty

    # Editor
    vim
    neovim

    # utils
    git
    killall
    neofetch
    wget
    stow
  ];
}
