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
          id = "b582755f-b20e-494a-9c11-16c0b3f1dfa5";
          url = "about:newtab";
          position = 100;
          isEssential = true;
        };
      };
    };
  };
}
