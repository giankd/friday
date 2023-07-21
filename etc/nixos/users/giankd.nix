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
    ];
    shell = pkgs.zsh;
    initialPassword = "toor";
  };

  # Shell
  programs.zsh = {
    enable = true;
    ohMyZsh.enable = true;
    enableCompletion = true;
    # promptInit = "source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
  };

  # Editor
  programs.vim = {
    defaultEditor = true;
  };
}
