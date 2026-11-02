{
  flake.modules.homeManager.programs-organization-yazi = {pkgs, ...}: {
    programs.yazi = {
      enable = true;
      settings = {
        mgr.show_hidden = true;
      };
    };
  };
}
