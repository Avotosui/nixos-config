{inputs, ...}: {
  perSystem = {system, ...}: {
    overlayAttrs = {
      stable = import inputs.nixpkgs-stable {
        inherit system;
      };
    };
  };
}
