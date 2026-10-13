{
  flake.modules.homeManager.programs-development-codex = {pkgs, ...}: {
    home.packages = with pkgs; [codex];
  };
}
