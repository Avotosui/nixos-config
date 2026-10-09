{
  self,
  inputs,
  ...
}: {
  flake.modules.nixos.hosts-fw13p = {pkgs, ...}: {
    imports = with self.modules.nixos; [
      hosts-fw13p-users-avotosui

      programs-packagemanagers-nix

      programs-desktops-noctaliahyprland

      programs-fhscompat-nixld

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

    boot.loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };

    networking.hostName = "fw13p";

    services = {
      libinput.enable = true;

      xserver.xkb = {
        layout = "us";
        variant = "";
      };
    };

    system.stateVersion = "26.05";
  };

  flake.nixosConfigurations.fw13p = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.modules.nixos.hosts-fw13p
    ];
  };
}
