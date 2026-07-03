{
  flake.modules.homeManager.programs-filemanagers-yazi = {pkgs, ...}: {
    home.packages = with pkgs; [yazi];
  };
}
