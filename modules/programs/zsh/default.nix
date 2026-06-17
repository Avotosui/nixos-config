{
  flake.modules.nixos.programs-zsh = {pkgs, ...}: {
    programs.zsh = {
      enable = true;
    };
  };

  flake.modules.homeManager.programs-zsh = {pkgs, ...}: {
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
