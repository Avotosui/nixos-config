{
  flake.modules.homeManager.programs-vpns-proton = {pkgs, ...}: {
    home.packages = with pkgs; [proton-vpn-cli];
  };
}
