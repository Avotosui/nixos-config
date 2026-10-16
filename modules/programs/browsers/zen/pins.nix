{
  flake.modules.homeManager.programs-browsers-zen = {
    programs.zen-browser.profiles.default = {
      pinsForce = true;
      pinsForceAction = "demote";
      pins = {
        "Calendar" = {
          id = "5f96a9dc-b7c2-4671-accd-15497621dd67";
          url = "https://calendar.google.com/calendar/u/0/r/week";
          position = 100;
          isEssential = true;
        };
        "New Tab" = {
          id = "f44dfae9-830e-4b4e-b195-393163042a79";
          url = "about:newtab";
          position = 100;
          isEssential = true;
        };
      };
    };
  };
}
