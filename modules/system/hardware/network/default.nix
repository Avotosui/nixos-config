{
  flake.modules.nixos.system-hardware-network = {
    networking.networkmanager.enable = true;
  };
}
