{
  self,
  inputs,
  ...
}: {
  flake.modules.nixos.hosts-laptop = {pkgs, ...}: {
    imports = with self.modules.nixos; [
      hosts-laptop-users-avotosui

      programs-desktop-environments-plasma

      programs-editors-vim
      programs-packagemanagers-nix
      programs-shells-zsh

      system-fonts-jetbrainsmono
      system-hardware-audio
      system-hardware-network
      system-hardware-uinput
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

    networking.hostName = "laptop";

    services = {
      libinput.enable = true;

      xserver.xkb = {
        layout = "us";
        variant = "";
      };
    };

    system.stateVersion = "26.05";
  };

  flake.nixosConfigurations.laptop = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.modules.nixos.hosts-laptop
    ];
  };
}
