{ ... }:

{
    services.tlp.enable = true;
    services.tlp.settings = {
        START_CHARGE_THRESH_BAT0 = 85;
        STOP_CHARGE_THRESH_BAT0 = 95;
        START_CHARGE_THRESH_BAT1 = 85;
        STOP_CHARGE_THRESH_BAT1 = 95;
    };
}
