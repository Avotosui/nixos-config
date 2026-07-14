{
  flake.modules.homeManager.programs-browsers-zen = {
    programs.zen-browser.profiles.default.search = {
      force = true;
      default = "google";
      privateDefault = "ddg";

      engines = {
        "Youtube" = {
          urls = [
            {
              template = "https://www.youtube.com/results";
              params = [
                {
                  name = "search_query";
                  value = "{searchTerms}";
                }
              ];
            }
          ];
          definedAliases = ["@youtube"];
        };
      };
    };
  };
}
