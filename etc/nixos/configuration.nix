{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./bootloader.nix
      ./profiles/friday-i3.nix
      ./users/root.nix
      ./users/giankd.nix
    ];

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 8d";
  };

  # Copy the NixOS configuration file and link it from the resulting system
  # (/run/current-system/configuration.nix). This is useful in case you
  # accidentally delete configuration.nix.
  system.copySystemConfiguration = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It's perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.05"; # Did you read the comment?
}
