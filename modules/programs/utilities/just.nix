{
  flake.modules.homeManager.programs-utilities-just = {pkgs, ...}: {
    home.packages = with pkgs; [just];
  };
}
