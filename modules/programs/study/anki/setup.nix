{
  flake.modules.homeManager.programs-study-anki = {pkgs, ...}: {
    programs.anki = {
      enable = true;
      theme = "dark";

      addons = with pkgs.ankiAddons; [
        review-heatmap
      ];
    };
  };
}
