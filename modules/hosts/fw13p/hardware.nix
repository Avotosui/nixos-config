{
  flake.modules.nixos.hosts-fw13p = {
    config,
    lib,
    pkgs,
    modulesPath,
    ...
  }: {
    imports = [
      (modulesPath + "/installer/scan/not-detected.nix")
    ];

    boot.initrd.availableKernelModules = ["xhci_pci" "thunderbolt" "nvme"];
    boot.initrd.kernelModules = [];
    boot.kernelModules = ["kvm-intel"];
    boot.extraModulePackages = [];

    fileSystems."/" = {
      device = "/dev/mapper/luks-2c7bdc3f-62ec-4197-b572-152600060b61";
      fsType = "ext4";
    };

    boot.initrd.luks.devices."luks-2c7bdc3f-62ec-4197-b572-152600060b61".device = "/dev/disk/by-uuid/2c7bdc3f-62ec-4197-b572-152600060b61";

    fileSystems."/boot" = {
      device = "/dev/disk/by-uuid/8E58-BD19";
      fsType = "vfat";
      options = ["fmask=0077" "dmask=0077"];
    };

    swapDevices = [
      {device = "/dev/mapper/luks-96c1069b-aa31-4b8f-a6c3-da14f5c00df4";}
    ];

    nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
    hardware.cpu.intel.npu.enable = true;
    hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
  };
}
