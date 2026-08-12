{
  flake.modules.homeManager.programs-organization-dua = {pkgs, ...}: {
    home.packages = with pkgs; [dua];
  };
}
