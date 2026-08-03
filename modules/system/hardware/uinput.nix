{
  flake.modules.nixos.system-hardware-uinput = {
    hardware.uinput.enable = true;
  };

  flake.modules.homeManager.system-hardware-uinput = {
    user.groups = ["uinput"];
  };
}
