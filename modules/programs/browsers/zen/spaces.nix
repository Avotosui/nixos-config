{
  flake.modules.homeManager.programs-browsers-zen = {
    programs.zen-browser.profiles.default = rec {
      pinsForce = true;
      pinsForceAction = "demote";
    };
  };
}
