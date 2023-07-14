{ config, ... }:

{
  imports =
    [
      ./friday.nix
      ../packages/i3.nix
    ];

  networking.hostName = "friday";
}
