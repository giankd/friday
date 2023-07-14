{ ... }:

{
	boot.loader = {
		#grub = {
		#	enable = true;
		#	efiSupport = true;
		#	device = "/dev/sda";
		#};
		systemd-boot.enable = true;
		efi.canTouchEfiVariables = true;
	};
}
