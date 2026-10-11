{
  flake.modules.homeManager.programs-browsers-zen = {
    programs.zen-browser.profiles.default.userContent = ''
      @-moz-document url("about:newtab") {
        .personalizeButtonWrapper {
          display: none;
        }
      }

      @-moz-document url("about:privatebrowsing") {
        html.private {
          filter: grayscale(100%);
        }
      }
    '';
  };
}
