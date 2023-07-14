{ pkgs , ... }:

{
  users.users.root = {
    shell = pkgs.zsh;
    initialPassword = "toor";
  };
}
