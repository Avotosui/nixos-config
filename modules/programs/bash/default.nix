{
  flake.modules.homeManager.programs-bash = {
    programs.bash = {
      enable = true;

      shellOptions = [
        "globstar"
        "failglob"
      ];
    };
  };
}
