{
  flake.modules.nixos.programs-shells-zsh = {
    programs.zsh = {
      enable = true;
    };
  };

  flake.modules.homeManager.programs-shells-zsh = {
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
