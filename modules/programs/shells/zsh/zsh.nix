{
  flake.modules.nixos.programs-shells-zsh = {
    programs.zsh.enable = true;
  };

  flake.modules.homeManager.programs-shells-zsh = {config, ...}: {
    home.shell.enableZshIntegration = true;

    programs.zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestion.enable = true;
      dotDir = "${config.xdg.configHome}/zsh";
      initContent = builtins.readFile ./.zshrc;
      history = {
        extended = true;
        ignoreDups = true;
        save = 10000;
        size = 10000;
      };

      setOptions = [
        "EXTENDED_GLOB"
        "GLOB_STAR_SHORT"
        "NOMATCH"
      ];
    };
  };
}
