{self, ...}: {
  flake.modules.homeManager.programs-study-anki = {
    config,
    pkgs,
    ...
  }: {
    programs.anki = {
      enable = true;
      theme = "dark";
      profiles."User 1".sync = {
        usernameFile = config.sops.secrets."anki/username".path;
        keyFile = config.sops.secrets."anki/key".path;
        autoSync = true;
        syncMedia = true;
      };

      addons = with pkgs.ankiAddons; [
        review-heatmap
      ];
    };

    sops.secrets = {
      "anki/username" = {
        sopsFile = "${self}/secrets/home/secrets.yaml";
      };
      "anki/key" = {
        sopsFile = "${self}/secrets/home/secrets.yaml";
      };
    };
  };
}
