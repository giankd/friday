{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # Editors
    neovim

    # Environment
    tmux
    nix-direnv

    # Tools
    tree-sitter
    clang
    gnat13
    ghq

    # Cli
    delta
    jq
    fzf
    ripgrep
    wireshark
    httpie
    nmap
    python3
    nodejs
    nodePackages_latest.pnpm
    nodePackages_latest.prettier

    # Tui
    lazygit
  ];
}
