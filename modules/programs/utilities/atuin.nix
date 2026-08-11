{
  flake.modules.homeManager.programs-utilities-atuin = {
    programs.atuin = {
      enable = true;

      flags = ["--disable-up-arrow"];

      settings = {
        ai.enabled = false;
        auto_sync = true;
        enter_accept = false;
        history_filter = [
          "base64"
          "base32"
          "^zi$"
          "echo .* wg pubkey"
          "/nix/store"
          "CLOUDFLARE_API_TOKEN"
          "api_token"
          "API_TOKEN"
        ];
        prefers_reduced_motion = true;
        search_mode = "fuzzy";
        show_help = false;
        stats = {
          common_subcommands = [
            "git"
            "nix"
            "tmux"
            "systemctl"
          ];
          ignored_commands = [
            "cd"
            "fg"
            "ls"
            "nvim"
            "z"
          ];
        };
        style = "compact";
        sync.records = true;
        sync_frequency = "5m";
        sync_address = "https://api.atuin.sh";
        theme.name = "tokyo-night";
        tmux.enabled = true;
        update_check = false;
      };

      themes = {
        "tokyo-night" = {
          theme.name = "tokyo-night";
          colors = {
            AlertInfo = "#73daca";
            AlertWarn = "#e0af68";
            AlertError = "#f7768e";
            Annotation = "#414868";
            Base = "#a9b1d6";
            Guidance = "#ff9e64";
            Important = "#7aa2f7";
            Title = "#bb9af7";
          };
        };
      };
    };
  };
}
