{
  flake.modules.nixos.programs-utilities-tree = {pkgs, ...}: {
    environment.systemPackages = with pkgs; [tree];
  };

  flake.modules.homeManager.programs-utilities-tree = {pkgs, ...}: {
    home.packages = with pkgs; [tree];
  };
}
