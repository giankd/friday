{ pkgs, ... }:

{
  # Fonts
  fonts.fonts = with pkgs; [
    jetbrains-mono
    iosevka
    powerline-fonts
    nerdfonts
    source-code-pro
    material-icons
  ];
}
