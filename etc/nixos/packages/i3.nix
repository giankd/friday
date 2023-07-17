{ pkgs, ... }:

{
  services.xserver = {
    enable = true;
    windowManager.i3 = {
      enable = true;
      package = pkgs.i3-gaps;
      extraPackages = with pkgs; [
        polybar
        lxappearance
        nordic
        nordzy-cursor-theme
        nordzy-icon-theme
        arandr
        rofi
        flameshot
        betterlockscreen
        picom
        nitrogen
        dunst
        libnotify
        alsa-utils
        playerctl
        xorg.xev
        light
        font-manager
        networkmanagerapplet
        blueberry
        xfce.thunar
        pavucontrol
        batsignal
        acpi
        libinput-gestures
        wmctrl
        sox
        xclip
	    xss-lock
      ];
    };
    desktopManager = {
      xterm.enable = false;
    };
    displayManager = {
      # gdm = {
      sddm = {
        enable = true;
	theme = "sugar-dark";
      };
      defaultSession = "none+i3";
    };
  };

  environment.systemPackages = let themes = pkgs.callPackage ./sddm-themes.nix {}; in [
    pkgs.libsForQt5.qt5.qtgraphicaleffects
    themes.sddm-sugar-dark
  ];

  # This enables udev permission
  # https://github.com/NixOS/nixpkgs/issues/48623#issuecomment-1454072426
  programs.light.enable = true;
}
