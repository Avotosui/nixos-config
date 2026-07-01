{
  self,
  inputs,
  ...
}: {
  flake.modules.nixos.hosts-laptop = {pkgs, ...}: {
    imports = with self.modules.nixos; [
      programs-gui-desktopmanagers-plasma
      programs-gui-windowmanagers-hyprland

      programs-devtools-git
      programs-terminals-kitty
      programs-editors-vim
      programs-shells-zsh

      system-fonts-jetbrainsmono
      system-hardware-network
      system-hardware-audio
      system-locale
      system-peripherals-bluetooth
      system-peripherals-printing

      users-avotosui
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

    system.stateVersion = "26.04";
  };

  flake.nixosConfigurations.laptop = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.modules.nixos.hosts-laptop

      inputs.home-manager.nixosModules.home-manager
      {
        home-manager = {
          useGlobalPkgs = true;
          useUserPackages = true;
          users.avotosui = self.modules.homeManager.users-avotosui;
        };
      }
    ];
  };
}
