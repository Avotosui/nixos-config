{
  flake.modules.homeManager.programs-versioncontrol-git = {config, ...}: {
    programs.git = {
      enable = true;
      settings = {
        commit.gpgsign = true;
        gpg.format = "ssh";
        include = {
          path = config.sops.secrets."git/user".path;
        };
        init.defaultBranch = "main";
        merge = {
          conflictStyle = "diff3";
          tool = "nvimdiff";
        };
        mergetool.prompt = false;
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
