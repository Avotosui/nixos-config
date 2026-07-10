{
  self,
  inputs,
  ...
}: {
  flake.modules.nixos.hosts-laptop = {pkgs, ...}: {
    imports = with self.modules.nixos; [
      programs-desktopmanagers-plasma

      programs-development-git
      programs-editors-vim
      programs-packagemanagers-nix
      programs-shells-zsh
      programs-terminals-kitty

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

  flake.modules.homeManager.hosts-laptop = {
    imports = with self.modules.homeManager; [
      programs-windowmanagers-hyprland
      programs-desktopshells-caelestia
      programs-desktopmanagers-plasma

      programs-browsers-zen

      programs-compression-p7zip
      programs-compression-xz
      programs-compression-zip

      programs-customization-starship

      programs-development-file
      programs-development-git
      programs-development-tree

      programs-editors-neovim

      programs-media-ffmpeg
      programs-media-gimp
      programs-media-magick
      programs-media-vlc

      programs-multiplexers-tmux

      programs-organization-kondo
      programs-organization-yazi

      programs-security-bitwarden

      programs-services-redshift

      programs-shells-bash
      programs-shells-zsh

      programs-terminals-kitty

      programs-utilities-fastfetch
      programs-utilities-fzf
      programs-utilities-onefetch

      system-xdg

      users-avotosui
    ];
  };

  flake.nixosConfigurations.laptop = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.modules.nixos.hosts-laptop

      inputs.home-manager.nixosModules.home-manager
      {
        home-manager = {
          useGlobalPkgs = true;
          useUserPackages = true;
          users.avotosui = self.modules.homeManager.hosts-laptop;
        };
      }
    ];
  };
}
