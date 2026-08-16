{
  flake.modules.nixos.hosts-vm = {lib, ...}: {
    boot.initrd.availableKernelModules = [
      "ata_piix"
      "mptspi"
      "uhci_hcd"
      "ehci_pci"
      "ahci"
      "sd_mod"
      "sr_mod"
    ];
    boot.initrd.kernelModules = [];
    boot.kernelModules = [];
    boot.extraModulePackages = [];

    fileSystems."/" = {
      device = "/dev/disk/by-uuid/6b711e0c-1d1d-425e-a622-74c095bcdc19";
      fsType = "ext4";
    };

    swapDevices = [
      {device = "/dev/disk/by-uuid/30db1719-7e32-40a3-be2e-583cd72abecd";}
    ];

    nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  };
}
