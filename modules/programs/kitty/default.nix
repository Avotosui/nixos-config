{
  flake.modules.nixos.programs-kitty = {pkgs, ...}: {
    environment.systemPackages = with pkgs; [kitty];
  };

  flake.modules.homeManager.programs-kitty = {pkgs, ...}: {
    programs.kitty = {
      enable = true;

      font.name = "JetBrainsMono Nerd Font";

      shellIntegration = {
        enableBashIntegration = true;
        enableZshIntegration = true;
      };
    };

    home.sessionVariables.TERMINAL = "kitty";

    xdg.terminal-exec = {
      enable = true;
      settings = {
        default = ["kitty.desktop"];
      };
    };

    xdg.mimeApps = {
      enable = true;
      defaultApplications = {
        "x-scheme-handler/terminal" = ["kitty.desktop"];
      };
    };
  };
}
