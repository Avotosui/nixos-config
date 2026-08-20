{
  flake.modules.homeManager.programs-multiplexers-tmux = {pkgs, ...}: {
    programs.tmux = {
      enable = true;

      focusEvents = true;
      keyMode = "vi";
      mouse = true;
      terminal = "tmux-256color";

      plugins = with pkgs.tmuxPlugins; [
        tokyo-night-tmux

        battery
        cpu

        resurrect
      ];

      extraConfig = ''
        set -ag terminal-overrides ",xterm-256color:RGB"

        set -g @tokyo-night-tmux_theme night
        set -g @tokyo-night-tmux_transparent 1

        set -g @tokyo-night-tmux_show_datetime 1
        set -g @tokyo-night-tmux_date_format MDY
        set -g @tokyo-night-tmux_time_format 12H
        set -g @tokyo-night-tmux_show_git 1
        set -g @tokyo-night-tmux_show_battery_widget 1
      '';
    };
  };
}
