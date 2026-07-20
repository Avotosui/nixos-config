{
  flake.modules.nixos.programs-shells-zsh = {
    programs.zsh.enable = true;
  };

  flake.modules.homeManager.programs-shells-zsh = {
    home.shell.enableZshIntegration = true;

    programs.zsh = {
      enable = true;
      enableCompletion = true;
      dotDir = ".config/zsh";
      initExtra = builtins.readFile ./.zshrc;
      history.ignoreDups = true;

      setOptions = [
        "GLOB_STAR_SHORT"
        "NOMATCH"
      ];
    };
  };
}
