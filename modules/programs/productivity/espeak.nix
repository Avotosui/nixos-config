{
  flake.modules.homeManager.programs-productivity-espeak = {pkgs, ...}: {
    home.packages = with pkgs; [espeak];
  };
}
