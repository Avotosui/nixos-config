{
  flake.modules.nixos.programs-zsh = {
    programs.zsh = {
      enable = true;
    };
  };

  flake.modules.homeManager.programs-zsh = {
    programs.zsh = {
      enable = true;
      enableCompletion = true;

      setOptions = [
        "GLOB_STAR_SHORT"
        "NOMATCH"
      ];
    };
  };
}
