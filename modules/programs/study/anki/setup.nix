{
  config,
  pkgs,
  ...
}: {
  flake.modules.homeManager.programs-study-anki = {
    programs.anki = {
      enable = true;
      theme = "dark";
      profiles."User 1".sync = {
        usernameFile = config.sops.secrets."anki/username".path;
        keyFile = config.sops.secrets."anki/key".path;
        autoSync = true;
      };

      addons = with pkgs.ankiAddons; [
        review-heatmap
      ];
    };
  };
}
