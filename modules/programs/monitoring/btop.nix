{
  flake.modules.homeManager.programs-monitoring-btop = {pkgs, ...}: {
    programs.btop = {
      enable = true;
      package = pkgs.btop-rocm;

      settings.vim_keys = true;
    };
  };
}
