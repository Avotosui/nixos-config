{
  flake.modules.homeManager.programs-fzf = {
    programs.fzf = {
      enable = true;
      enableBashIntegration = true;
    }; 
  };
}
