{
  flake.modules.homeManager.programs-tmux = {pkgs, ...}: {
    home.packages = with pkgs; [tmux];
  };
}
