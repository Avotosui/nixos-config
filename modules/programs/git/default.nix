{
  flake.modules.nixos.programs-git = {pkgs, ...}: {
    environment.systemPackages = with pkgs; [git];
  };

  flake.modules.homeManager.programs-git = {
    programs.git = {
      enable = true;
      settings = {
        user.name = "Avotosui";
        user.email = "REDACTED";

        init.defaultBranch = "main";
      };
    };
  };
}
