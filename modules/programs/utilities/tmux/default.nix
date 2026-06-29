{
  flake.modules.homeManager.programs-utilities-tmux = {
    programs.tmux = {
      enable = true;

      terminal = "tmux-256color";

      extraConfig = ''
        set -ag terminal-overrides ",xterm-256color:RGB"
      '';
    };
  };
}
