{
  flake.modules.homeManager.programs-multiplexers-tmux = {pkgs, ...}: {
    programs.tmux = {
      enable = true;
      focusEvents = true;

      plugins = with pkgs.tmuxPlugins; [
        tokyo-night-tmux
      ];

      terminal = "screen-256color";

      extraConfig = ''
        set -ag terminal-overrides ",xterm-256color:RGB"
      '';
    };
  };
}
