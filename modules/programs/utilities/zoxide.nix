{
  flake.modules.homeManager.programs-utilities-zoxide = {
    programs.zoxide = {
      enable = true;
      options = ["--cmd cd"];
    };
  };
}
