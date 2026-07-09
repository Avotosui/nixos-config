{
  flake.modules.homeManager.programs-multiplexers-tmux = {pkgs, ...}: {
    programs.tmux = {
      enable = true;
      focusEvents = true;
      terminal = "screen-256color";

      plugins = with pkgs.tmuxPlugins; [
        tokyo-night-tmux
      ];

    };
  };
}
