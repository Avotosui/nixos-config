{
  flake.modules.homeManager.programs-utilities-tmux = {pkgs, ...}: {
    home.packages = with pkgs; [tmux];
  };
}
