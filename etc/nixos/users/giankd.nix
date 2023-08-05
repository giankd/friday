{ pkgs, ... }:

let
  user = "giankd";
  description = "giankd";
in
{
  imports =
    [
      ../packages/fonts.nix
      ../packages/development.nix
    ];
  users.users.${user} = {
    isNormalUser = true;
    description = "${description}";
    createHome = true;
    group = "users";
    extraGroups = [
      "wheel"
      "networkmanager"
      "video"
      "audio"
      "docker"
      "libvirtd"
      "storage"
      "input"
      # "lp" # Bluetooth - https://github.com/NixOS/nixpkgs/issues/20864#issuecomment-270630266
    ];
    packages = with pkgs; [
      # Shell
      zsh
      zsh-powerlevel10k
      antigen
      thefuck

      # cli
      exa
      bat
      htop
      nvtop
      trash-cli
      fzf
      tldr
      duf
      ncdu
      pandoc
      fltk14

      # Web
      brave

      # Apps
      wordgrinder
      thunderbird
      _1password-gui
      vlc
      qbittorrent
      wpsoffice # Office
      gimp # Photoshop
      inkscape-with-extensions # Illustrator
      scribus # Indesign
      openshot-qt # Premiere
      unityhub
      blender
      telegram-desktop
      discord
    ];
    shell = pkgs.zsh;
    initialPassword = "toor";
  };

  # Shell
  programs.zsh = {
    enable = true;
    ohMyZsh.enable = true;
    enableCompletion = true;
  };

  # Editor
  programs.vim = {
    defaultEditor = true;
  };
}
