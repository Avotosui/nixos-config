{
  self,
  inputs,
  ...
}: {
  flake.modules.nixos.hosts-wsl = {pkgs, ...}: {
    imports = with self.modules.nixos; [
      programs-git
      programs-tree
      programs-vim
      programs-zsh

      system-core

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

  flake.nixosConfigurations.wsl = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.modules.nixos.hosts-wsl

      inputs.nixos-wsl.nixosModules.default

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
