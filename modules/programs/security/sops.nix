{
  self,
  config,
  inputs,
  ...
}: {
  flake.modules.homeManager.programs-security-sops = {
    imports = [
      inputs.sops-nix.homeManagerModules.sops
    ];

    sops = {
      age.keyFile = "${config.xdg.configHome}/sops/age/keys.txt";
      defaultSopsFile = "${self}/secrets/home/secrets.yaml";
    };
  };
}
