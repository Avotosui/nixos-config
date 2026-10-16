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
      programs-gaming-steam
      programs-music-librepods
      programs-networking-openssh
      programs-networking-tailscale
      programs-packagemanagers-flatpak
      programs-packagemanagers-nix
      programs-productivity-at
      programs-productivity-kdeconnect
      programs-security-sops
      programs-shells-zsh
      programs-synchronization-syncthing

      system-boot-limine
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

    boot.kernelPackages = pkgs.linuxPackages_latest;

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
