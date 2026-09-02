{
  flake.modules.homeManager.programs-multimedia-documents-zathura = {
    programs.zathura = {
      enable = true;

      extraConfig = ''
        set recolor false
        set selection-clipboard clipboard
      '';
    };
  };
}
