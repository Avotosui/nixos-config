{
  flake.modules.homeManager.programs-study-anki = {pkgs, ...}: {
    programs.anki = {
      enable = true;
      theme = "light";

      addons = with pkgs.ankiAddons; [
        review-heatmap
      ];
    };
  };
}
