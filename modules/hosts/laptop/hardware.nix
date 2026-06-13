{
    flake.modules.nixos.hosts-laptop = { lib, ... }: 
    {
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
            device = "/dev/disk/by-uuid/18a953d1-e73d-4f6a-89ea-795dd7f24d0b"; 
            fsType = "ext4"; 
        }; 

        swapDevices = [
            { device = "/dev/disk/by-uuid/9b5b76cd-5242-4d09-bec2-4ac49a11b3ae"; }
        ];

        nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux"; 
    }; 
}
