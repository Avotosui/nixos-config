{
  self,
  inputs,
  ...
}: {
  flake.modules.nixos.hosts-vm = {pkgs, ...}: {
    imports = with self.modules.nixos; [
      hosts-vm-users-avotosui

      programs-desktops-noctaliahyprland

      programs-packagemanagers-nix
      programs-networking-openssh
      programs-security-sops
      programs-shells-zsh

      system-fonts-jetbrainsmono
      system-hardware-audio
      system-hardware-network
      system-locale
      system-peripherals-bluetooth
      system-peripherals-printing
      system-users-groups
      system-users-homemanager
    ];

    boot = {
      loader.grub = {
        enable = true;
        device = "/dev/sda";
        useOSProber = true;
      };
      kernelPackages = pkgs.linuxPackages_latest;
    };

    networking.hostName = "vm";

    services.xserver.videoDrivers = ["vmware"];
    virtualisation.vmware.guest.enable = true;

    services = {
      libinput.enable = true;

      xserver.xkb = {
        layout = "us";
        variant = "";
      };
    };

    system.stateVersion = "26.05";
  };

  flake.nixosConfigurations.vm = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.modules.nixos.hosts-vm
    ];
  };
}
