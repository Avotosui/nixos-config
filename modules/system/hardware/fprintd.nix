{
  flake.modules.nixos.system-hardware-fprintd = {
    services.fprintd.enable = true;
  };
}
