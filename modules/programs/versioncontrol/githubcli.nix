{
  flake.modules.homeManager.programs-versioncontrol-githubcli = {pkgs, ...}: {
    home.packages = with pkgs; [gh];
  };
}
