{
  flake.modules.homeManager.programs-editors-obsidian = {pkgs, ...}: {
    programs.obsidian = {
      enable = true;
      cli.enable = true;

      # defaultSettings = {
      #   app = {
      #   };
      # };
    };
  };
}
