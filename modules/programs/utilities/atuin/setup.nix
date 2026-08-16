{self, ...}: {
  flake.modules.homeManager.programs-utilities-atuin = {config, ...}: {
    programs.atuin = {
      enable = true;

      flags = ["--disable-up-arrow"];

      settings = {
        key_path = config.sops.secrets."atuin/key".path;
        session_path = config.sops.secrets."atuin/session".path;
      };
    };

    sops.secrets = {
      "atuin/key" = {
        sopsFile = "${self}/secrets/home/secrets.yaml";
      };
      "atuin/session" = {
        sopsFile = "${self}/secrets/home/secrets.yaml";
      };
    };
  };
}
