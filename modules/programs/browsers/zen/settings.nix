{
  flake.modules.homeManager.programs-browsers-zen = {
    programs.zen-browser.profiles.default.settings = {
      "accessibility.typeaheadfind.manual" = false;

      "browser.aboutConfig.showWarning" = false;
      "browser.gesture.swipe.left" = "";
      "browser.gesture.swipe.right" = "";
      "browser.newtabpage.activity-stream.feeds.topsites" = false;
      "browser.tabs.groups.enabled" = true;
      "browser.tabs.hoverPreview.enabled" = true;
      "browser.tabs.insertRelatedAfterCurrent" = true;
      "browser.tabs.insertAfterCurrent" = true;
      "browser.tabs.selectOwnerOnClose" = false;
      "browser.tabs.warnOnClose" = true;
      "browser.topsites.contile.enabled" = false;
      "browser.translations.enable" = false;
      "browser.zoom.siteSpecific" = false;

      "devtools.debugger.remote-enabled" = true;

      "dom.battery.enabled" = false;

      "findbar.highlightAll" = true;

      "general.smoothScroll.currentVelocityWeighting" = 0.0;

      "gfx.webrender.all" = true;

      "layout.testing.overlay-scrollbars.always-visible" = true;

      "media.videocontrols.picture-in-picture.video-toggle.enabled" = true;
      "mousewheel.with_alt.action" = 5;
      "mousewheel.with_control.action" = 1;

      "network.cookie.cookieBehavior" = 5;
      "network.http.http3.enable" = true;
      "network.socket.ip_addr_any.disabled" = true;

      "privacy.firstparty.isolate" = true;
      "privacy.resistFingerprinting" = true;
      "privacy.resistFingerprinting.block_mozAddonManager" = true;
      "privacy.resistFingerprinting.pbMode" = true;
      "privacy.resistFingerprinting.randomization.canvas.use_siphash" = true;
      "privacy.resistFingerprinting.randomization.daily_reset.enabled" = true;
      "privacy.resistFingerprinting.randomization.daily_reset.private.enabled" = true;
      "privacy.spoof_english" = 1;

      "zen.tabs.select-recently-used-on-close" = false;
      "zen.tabs.show-newtab-vertical" = false;
      "zen.urlbar.behavior" = "float";
      "zen.urlbar.replace-newtab" = false;
      "zen.view.use-single-toolbar" = false;
      "zen.view.compact.hide-tabbar" = true;
      "zen.view.compact.hide-toolbar" = true;
      "zen.welcome-screen.seen" = true;
      "zen.workspaces.continue-where-left-off" = true;
      "zen.workspaces.natural-scroll" = true;
    };
  };
}
