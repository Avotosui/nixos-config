{
  self,
  inputs,
  ...
}: {
  flake.modules.nixos.hosts-fw13p = {pkgs, ...}: {
    imports = with self.modules.nixos; [
      hosts-fw13p-users-avotosui

      programs-desktops-noctaliahyprland
      programs-fhscompat-nixld
      programs-music-librepods
      programs-networking-openssh
      programs-packagemanagers-flatpak
      programs-packagemanagers-nix
      programs-productivity-at
      programs-productivity-kdeconnect
      programs-security-sops
      programs-shells-zsh

      system-hardware-audio
      system-hardware-fprintd
      system-hardware-network
      system-hardware-uinput
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
        options = "caps:swapescape";
      };
    };

    system.stateVersion = "26.05";
  };

  flake.nixosConfigurations.fw13p = inputs.nixpkgs.lib.nixosSystem {
    modules = [self.modules.nixos.hosts-fw13p];
  };
}
