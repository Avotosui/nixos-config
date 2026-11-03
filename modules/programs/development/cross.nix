{
  flake.modules.homeManager.programs-development-cross = {pkgs, ...}: {
    home.packages = with pkgs; [cargo-cross];
  };
}
