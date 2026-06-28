{self, ...}: {
  flake.modules.nixos.programs-packagemanagers-nix = {
    nix = {
      gc = {
        automatic = true;

        dates = "weekly";
        persistent = true;
        randomizedDelaySec = "45min";

        options = "--delete-older-than 7d";
      };

      optimise = {
        automatic = true;

        dates = "weekly";
        persistent = true;
        randomizedDelaySec = "45min";
      };

      settings.experimental-features = [
        "nix-command"
        "flakes"
      ];
    };

    nixpkgs = {
      config.allowUnfree = true;
      overlays = [self.overlays.default];
    };
  };
}
