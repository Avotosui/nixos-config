{
  flake.modules.homeManager.programs-browsers-brave = {pkgs, ...}: {
    home.packages = with pkgs; [brave-origin];
  };
}
