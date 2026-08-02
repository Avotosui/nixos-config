{
  flake.modules.homeManager.programs-security-ssh = {config, ...}: {
    programs.ssh = {
      enable = true;
      enableDefaultConfig = false;
      settings = {
        "*" = {
          ForwardAgent = false;
          AddKeysToAgent = "yes";
          Compression = false;
          ServerAliveInterval = 0;
          ServerAliveCountMax = 3;
          HashKnownHosts = true;
          UserKnownHostsFile = "~/.ssh/known_hosts";
          ControlMaster = "no";
          ControlPath = "~/.ssh/master-%r@%n:%p";
          ControlPersist = "no";
        };
        "github.com" = {
          HostName = "github.com";
          User = "git";
          IdentityFile = config.sops.secrets."git/private-ssh-key".path;
          IdentitiesOnly = true;
          ControlMaster = "auto";
          ControlPersist = "10m";
        };
      };
    };

    sops.secrets = {
      "git/private-ssh-key" = {};
    };
  };
}
