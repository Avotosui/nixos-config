{
  flake.modules.nixos.programs-development-git = {pkgs, ...}: {
    environment.systemPackages = with pkgs; [git];
  };

  flake.modules.homeManager.programs-development-git = {config, ...}: {
    programs.git = {
      enable = true;
      settings = {
        commit.gpgsign = true;
        gpg.format = "ssh";
        init.defaultBranch = "main";
        include = {
          path = config.sops.secrets."git/user".path;
        };
      };
    };

    sops.secrets = {
      "git/user" = {};
    };
  };
}
