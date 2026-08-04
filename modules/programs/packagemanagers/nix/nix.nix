{self, ...}: {
  flake.modules.nixos.programs-packagemanagers-nix = {
    nix.settings.experimental-features = [
      "nix-command"
      "flakes"
    ];

    nixpkgs = {
      config.allowUnfree = true;
      overlays = [self.overlays.default];
    };
  };
}
