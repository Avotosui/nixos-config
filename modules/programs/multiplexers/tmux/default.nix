{
  flake.modules.homeManager.programs-multiplexers-tmux = {pkgs, ...}: {
    programs.tmux = {
      enable = true;
      focusEvents = true;
      terminal = "tmux-256color";

      plugins = with pkgs.tmuxPlugins; [
        tokyo-night-tmux
      ];

      extraConfig = ''
        set -ag terminal-overrides ",xterm-256color:RGB"
      '';
    };
  };
}
