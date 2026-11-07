{ self, ... }: {
  perSystem = {final, ...}: {
    overlayAttrs = {
      local = import "${self}/pkgs" {
        inherit (final) callPackage;
      };
    };
  };
}
