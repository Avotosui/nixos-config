{inputs, ...}: {
  flake.modules.homeManager.programs-utilities-comma = {
    imports = [inputs.nix-index-database.homeModules.default];

    programs.nix-index-database.comma.enable = true;
  };
}
