{
  flake.modules.homeManager.programs-shells-bash = {
    programs.bash = {
      enable = true;

      shellOptions = [
        "globstar"
        "failglob"
      ];
    };
  };
}
