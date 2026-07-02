{
  flake.modules.nixos.programs-statusbars-waybar = {pkgs, ...}: {
    environment.systemPackages = with pkgs; [waybar];
  };
}
