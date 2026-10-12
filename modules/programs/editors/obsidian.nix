{
  flake.modules.homeManager.programs-editors-obsidian = {config, pkgs, ...}: {
    programs.obsidian = {
      enable = true;
      cli.enable = true;
      vaults."Main".target = "${config.xdg.userDirs.documents}/Obsidian/Main";
    };
  };
}
