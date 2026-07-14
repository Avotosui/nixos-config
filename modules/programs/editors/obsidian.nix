{
  flake.modules.homeManager.programs-editors-obsidian = {pkgs, ...}: {
    programs.obsidian = {
      enable = true;
      package = pkgs.obsidian;
      cli.enable = true;

      # defaultSettings = {
      #   app = {
      #   };
      # };
    };
  };
}
