{inputs, ...}: {
  flake.modules.nixos.hosts-fw13p = {
    fileSystems."/" = {
      device = "/dev/mapper/luks-2c7bdc3f-62ec-4197-b572-152600060b61";
      fsType = "ext4";
    };

    boot.initrd.luks.devices."luks-2c7bdc3f-62ec-4197-b572-152600060b61".device = "/dev/disk/by-uuid/2c7bdc3f-62ec-4197-b572-152600060b61";
    boot.initrd.luks.devices."luks-96c1069b-aa31-4b8f-a6c3-da14f5c00df4".device = "/dev/disk/by-uuid/96c1069b-aa31-4b8f-a6c3-da14f5c00df4";

    fileSystems."/boot" = {
      device = "/dev/disk/by-uuid/8E58-BD19";
      fsType = "vfat";
      options = ["fmask=0077" "dmask=0077"];
    };

    swapDevices = [
      {device = "/dev/mapper/luks-96c1069b-aa31-4b8f-a6c3-da14f5c00df4";}
    ];

    imports = [inputs.nixos-hardware.nixosModules.framework-intel-core-ultra-series3];

    hardware.facter.reportPath = ./facter.json;
  };
}
