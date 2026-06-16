{
  flake.modules.nixos.system-core = {pkgs, ...}: {
    nixpkgs.config.allowUnfree = true;

    nix.settings.experimental-features = [
      "nix-command"
      "flakes"
    ];
  };
}
