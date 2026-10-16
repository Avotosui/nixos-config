{
  flake.modules.homeManager.programs-browsers-zen = {
    programs.zen-browser.profiles.default = {
      spacesForce = true;
      spaces = {
        "Primary" = {
          id = "f18f13dc-1a62-4f5b-bf49-279455f428af";
          position = 1000;
          icon = "chrome://browser/skin/zen-icons/selectable/planet.svg";
        };
        "Secondary" = {
          id = "a3abd66b-b63e-4912-9f9b-00f7f1efba85";
          position = 2000;
          icon = "chrome://browser/skin/zen-icons/selectable/star-1.svg";
        };
      };
    };
  };
}
