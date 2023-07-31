{ config, pkgs, ... }:

{
  imports =
    [
      ../configurations/i18n.nix
      ../configurations/networking.nix
      ../configurations/time.nix
      ../configurations/virtualisation.nix
      ../packages/common.nix
      ../services/bluetooth.nix
      ../services/layout.nix
      ../services/libinput.nix
      ../services/sound.nix
      ../services/printing.nix
      ../services/ssh.nix
      ../services/nvidia.nix
      ../services/logind.nix
      "${builtins.fetchGit { url = "https://github.com/NixOS/nixos-hardware.git"; }}/lenovo/thinkpad/t480"
    ];
}
