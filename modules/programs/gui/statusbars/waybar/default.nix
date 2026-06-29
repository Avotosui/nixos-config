{
  flake.modules.nixos.programs-gui-statusbars-waybar = {pkgs, ...}: {
    environment.systemPackages = with pkgs; [waybar];
  };
}
