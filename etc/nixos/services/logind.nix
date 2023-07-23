{ ... }:

{
  services.logind.extraConfig = "HandleLidSwitch=suspend-then-hibernate";
}
