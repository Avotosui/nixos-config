{
  flake.modules.nixos.system-hardware-network = {
    networking.networkmanager.enable = true;
  };

  flake.modules.homeManager.system-hardware-network = {
    user.groups = ["networkmanager"];
  };
}
