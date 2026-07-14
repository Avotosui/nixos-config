{
  flake.modules.homeManager.programs-utilities-fzf = {
    programs.fzf = {
      enable = true;
      enableBashIntegration = true;
      enableZshIntegration = true;
    };
  };
}
