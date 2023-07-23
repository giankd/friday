# Friday

## giankd's nixos dotfiles

***Forever work in progress***

## Profile

I have two machines currently based on Nixos, and a machine based on Macos.

* Thinkpad T480 (Personal) => Nixos
* Microsoft Surface Pro 3 (Personal) => Nixos
* MacBook Pro M1 14 [WORK) => Macos => [here the dotfiles](https://github.com/giankd/mac-doftiles)

## About this config

* Focus on **shortcuts**
* High **usability** and **performance**
* **Optimized** for a 60% keyboard
* **Low resources** used
* **Colors and palette**: Mostly [Nord Theme](https://www.nordtheme.com/docs/colors-and-palettes)

## NordVPN and WireGuard

This config uses `wgnord` to write a config file imported in `NetworkManager`:

- `wgnord l <your-nordvpn-token>`
- `wgnord c <country> -o /path/to/config` (`wgnord` fails to connect via `wg-qwick`, it is intended)
- Import the config file generated in NetworkManager via GUI (simplest way)

### Credits

> Freely inspired by [Wabri's Dotfiles (Fabulinus)](https://github.com/Wabri/dotfiles/tree/main/profiles/Fabulinus)
