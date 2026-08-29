{
  flake.modules.homeManager.programs-versioncontrol-gitlabcli = {pkgs, ...}: {
    home.packages = with pkgs; [glab];
  };
}
