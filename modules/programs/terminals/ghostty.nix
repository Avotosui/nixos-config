{
  flake.modules.homeManager.programs-ghostty = {
    programs.ghostty = {
      enable = true;

      settings = {
        font-family = "JetBrainsMono Nerd Font";
      };
    };
  };
}
