{
  flake.modules.nixos.programs-utilities-git = {pkgs, ...}: {
    environment.systemPackages = with pkgs; [git];
  };

  flake.modules.homeManager.programs-utilities-git = {
    programs.git = {
      enable = true;
      settings = {
        user = {
          name = "Avotosui";
          email = "REDACTED";
        };

        init.defaultBranch = "main";
      };
    };
  };
}
