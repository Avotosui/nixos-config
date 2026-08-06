{self, ...}: {
  flake.modules.homeManager.programs-development-git = {config, osConfig, ...}: {
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
      "git/user" = {
        sopsFile = "${self}/secrets/root/${osConfig.networking.hostName}/secrets.yaml";
      };
      "git/private-ssh-key" = {
        sopsFile = "${self}/secrets/root/${osConfig.networking.hostName}/secrets.yaml";
      };
    };
  };
}
