{
  self,
  inputs,
  ...
}: {
  flake.modules.nixos.hosts-wsl = {
    imports = with self.modules.nixos; [
      programs-development-git
      programs-editors-vim
      programs-packagemanagers-nix
      programs-shells-zsh

      system-locale

      users-avotosui
    ];

    wsl = {
      enable = true;
      defaultUser = "avotosui";
    };

    networking.hostName = "wsl";

    nixpkgs.hostPlatform = "x86_64-linux";

    system.stateVersion = "26.04";
  };

  flake.modules.homeManager.hosts-wsl = {
    imports = with self.modules.homeManager; [
      programs-compression-p7zip
      programs-compression-xz
      programs-compression-zip

      programs-customization-starship

      programs-development-file
      programs-development-git
      programs-development-tree

      programs-editors-neovim

      programs-media-ffmpeg
      programs-media-magick

      programs-multiplexers-tmux

      programs-organization-kondo
      programs-organization-yazi

      programs-security-age
      programs-security-sops

      programs-shells-bash
      programs-shells-zsh

      programs-utilities-fastfetch
      programs-utilities-fzf
      programs-utilities-onefetch

      users-avotosui
    ];
  };

  flake.nixosConfigurations.wsl = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.modules.nixos.hosts-wsl

      inputs.nixos-wsl.nixosModules.default

      inputs.home-manager.nixosModules.home-manager
      {
        home-manager = {
          useGlobalPkgs = true;
          useUserPackages = true;
          users.avotosui = self.modules.homeManager.hosts-wsl;
        };
      }
    ];
  };
}
