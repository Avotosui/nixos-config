{inputs, ...}: {
  flake.modules.homeManager.programs-utilities-nixalien = {pkgs, ...}: {
    home.packages = with inputs.nix-alien.packages.${pkgs.stdenv.hostPlatform.system}; [
      nix-alien
    ];
  };
}
