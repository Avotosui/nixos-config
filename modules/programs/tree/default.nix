{
  flake.modules.nixos.programs-tree = {pkgs, ...}: {
    environment.systemPackages = with pkgs; [tree];
  };

  flake.modules.homeManager.programs-tree = {pkgs, ...}: {
    home.packages = with pkgs; [tree];
  };
}
