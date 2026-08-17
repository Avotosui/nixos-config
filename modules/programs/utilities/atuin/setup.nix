{self, ...}: {
  flake.modules.homeManager.programs-utilities-atuin = {config, ...}: {
    programs.atuin = {
      enable = true;
      daemon.enable = true;

      flags = ["--disable-up-arrow"];

      settings = {
        key_path = config.sops.secrets."atuin/key".path;
        session_path = config.sops.secrets."atuin/session".path;
      };
    };

    sops.secrets = let
      sopsFile = "${self}/secrets/home/secrets.yaml";
    in {
      "atuin/key" = {
        inherit sopsFile;
      };
      "atuin/session" = {
        inherit sopsFile;
      };
    };
    systemd.user.services.atuin-daemon.Unit.After = ["sops-nix.service"];
  };
}
