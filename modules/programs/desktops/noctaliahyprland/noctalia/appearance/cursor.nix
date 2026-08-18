{
  flake.modules.nixos.programs-desktops-noctaliahyprland = {pkgs, ...}: {
    environment.systemPackages = with pkgs.kdePackages; [breeze];
  };
}
