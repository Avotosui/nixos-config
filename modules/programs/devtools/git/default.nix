{
  flake.modules.nixos.programs-devtools-git = {pkgs, ...}: {
    environment.systemPackages = with pkgs; [git];
  };

  flake.modules.homeManager.programs-devtools-git = {
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
