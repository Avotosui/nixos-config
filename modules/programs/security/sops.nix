{
  self,
  inputs,
  ...
}: {
  flake.modules.nixos.programs-security-sops = {
    imports = [
      inputs.sops-nix.nixosModules.sops
    ];

    sops = {
      age.sshKeyPaths = ["/etc/ssh/ssh_host_ed25519_key"];
    };
  };

  flake.modules.homeManager.programs-security-sops = {
    config,
    pkgs,
    ...
  }: {
    imports = [
      inputs.sops-nix.homeManagerModules.sops
    ];

    home.packages = with pkgs; [sops];

    sops = {
      age.keyFile = "${config.xdg.configHome}/sops/age/keys.txt";
      defaultSopsFile = "${self}/secrets/home/secrets.yaml";
    };
  };
}
