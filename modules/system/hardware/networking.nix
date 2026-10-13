{
  flake.modules.nixos.system-hardware-network = {config, ...}: {
    networking = {
      networkmanager = {
        enable = true;
        wifi = {
          powersave = false;
        };
      };

      nftables.enable = true;

      firewall.enable = true;
    };
  };

  flake.modules.homeManager.system-hardware-network = {
    user.groups = ["networkmanager"];
  };
}
