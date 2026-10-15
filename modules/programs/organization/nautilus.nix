{
  flake.modules.homeManager.programs-organization-nautilus = {pkgs, ...}: {
    home.packages = with pkgs; [nautilus];
  };
}
