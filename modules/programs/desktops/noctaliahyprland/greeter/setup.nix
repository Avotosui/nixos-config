{inputs, ...}: {
  flake.modules.nixos.programs-desktops-noctaliahyprland = {
    imports = [
      inputs.noctalia-greeter.nixosModules.default
    ];

    programs.noctalia-greeter.enable = true;
  };
}
