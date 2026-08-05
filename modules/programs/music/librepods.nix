{
  flake.modules.homeManager.programs-music-librepods = {pkgs, ...}: {
    programs.librepods.enable = true;
  };
}
