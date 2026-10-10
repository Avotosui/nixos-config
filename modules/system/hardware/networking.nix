{self, ...}: {
  flake.modules.nixos.system-hardware-network = {config, ...}: {
    networking.networkmanager.enable = true;
  };

  flake.modules.homeManager.system-hardware-network = {
    user.groups = ["networkmanager"];
  };
}
