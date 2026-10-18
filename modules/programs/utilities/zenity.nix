{
  flake.modules.homeManager.programs-utilities-zenity = {pkgs, ...}: {
    home.packages = with pkgs; [zenity];
  };
}
