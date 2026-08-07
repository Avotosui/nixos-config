{self, ...}: {
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

    programs.ssh.settings."github.com" = {
      HostName = "github.com";
      User = "git";
      IdentityFile = config.sops.secrets."git/private-ssh-key".path;
      IdentitiesOnly = true;
      AddKeysToAgent = "yes";
    };

    sops.secrets = {
      "git/user" = {};
      "git/private-ssh-key" = {};
    };
  };
}
