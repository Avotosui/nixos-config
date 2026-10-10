{
  flake.modules.nixos.programs-music-librepods = {
    programs.librepods.enable = true;
  };

  flake.modules.homeManager.programs-music-librepods = {
    user.groups = ["librepods"];
  };
}
