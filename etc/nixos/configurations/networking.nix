{ config, pkgs, ... }:

{
  networking.networkmanager.enable = true;

  networking.firewall.checkReversePath = "loose";
  environment.systemPackages = with pkgs; [
    wgnord
  ];
}
