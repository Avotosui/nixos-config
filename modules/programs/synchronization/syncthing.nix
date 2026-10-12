{
  flake.modules.nixos.programs-synchronization-syncthing = {
    networking.firewall.allowedTCPPorts = [22000];
    networking.firewall.allowedUDPPorts = [22000 21027];
  };

  flake.modules.homeManager.programs-synchronization-syncthing = {config, ...}: {
    services.syncthing = {
      enable = true;

      cert = config.sops.secrets."syncthing/cert".path;
      key = config.sops.secrets."syncthing/key".path;

      overrideDevices = true;
      overrideFolders = true;

      settings = {
        devices = {
          "di" = {id = "2T2GPBO-D6KDDJQ-IFKDUOE-TVJQWB6-7DC2X5E-LLOJ3DO-UDI2BUQ-U4K4TAT";};
          "gpp8" = {id = "OYL3P6Y-UV77FZ4-T7YPSSC-2MPHF7Q-PWREA7B-BBBZXOQ-RWZL5HL-OWYJWAE";};
          "ipam3" = {id = "GY5IKXX-7UNTHTL-GNGQU3I-LV4ZAZQ-KKTOHKP-7KRFAGS-IWIUT4G-H5LHEQI";};
        };
        folders = {
          "obsidian-main" = {
            path = "${config.xdg.userDirs.documents}/Obsidian/Main";
            devices = [
              "di"
              "gpp8"
              "ipam3"
            ];
          };
        };
      };
    };

    sops.secrets = {
      "syncthing/cert" = {};
      "syncthing/key" = {};
    };
  };
}
