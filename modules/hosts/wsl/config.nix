{
  self,
  inputs,
  ...
}: {
  flake.modules.nixos.hosts-wsl = {
    imports = with self.modules.nixos; [
      hosts-wsl-users-avotosui

      programs-packagemanagers-nix

      programs-editors-vim
      programs-fhscompat-nixld
      programs-security-sops
      programs-shells-zsh

      system-locale
      system-users-groups
      system-users-homemanager
    ];

    networking.hostName = "wsl";

    nixpkgs.hostPlatform = "x86_64-linux";

    services.udev.enable = true;

    system.stateVersion = "26.05";

    wsl = {
      enable = true;
      defaultUser = "avotosui";
    };
  };

  flake.nixosConfigurations.wsl = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.modules.nixos.hosts-wsl
      inputs.nixos-wsl.nixosModules.default
    ];
  };
}
