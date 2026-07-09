let
  mkLockedAttrs = builtins.mapAttrs (_: value: {
    Value = value;
    Status = "locked";
  });
in {
  flake.modules.homeManager.programs-browsers-zen = {
    programs.zen-browser.policies = {
      Preferences = mkLockedAttrs {
        "browser.aboutConfig.showWarning" = false;
        "browser.gesture.swipe.left" = "";
        "browser.gesture.swipe.right" = "";
        "browser.newtabpage.activity-stream.feeds.topsites" = false;
        "browser.tabs.groups.enabled" = true;
        "browser.tabs.hoverPreview.enabled" = true;
        # swap to false, true to make new tabs insert after current active tab
        "browser.tabs.insertRelatedAfterCurrent" = true;
        "browser.tabs.insertAfterCurrent" = false;
        "browser.tabs.selectOwnerOnClose" = false;
        "browser.tabs.warnOnClose" = true;
        "browser.topsites.contile.enabled" = false;
        "browser.translations.enable" = false;
        "browser.zoom.siteSpecific" = false;

        "dom.battery.enabled" = false;

        "findbar.highlightAll" = true;

        "general.smoothScroll.currentVelocityWeighting" = 0.0;

        "gfx.webrender.all" = true;

        "layout.testing.overlay-scrollbars.always-visible" = true;

        "media.videocontrols.picture-in-picture.video-toggle.enabled" = true;

        "mousewheel.with_control.action" = 1;

        "network.cookie.cookieBehavior" = 5;
        "network.http.http3.enable" = true;
        "network.socket.ip_addr_any.disabled" = true; # disallow bind to 0.0.0.0

        "privacy.firstparty.isolate" = true;
        "privacy.resistFingerprinting" = true;
        "privacy.resistFingerprinting.block_mozAddonManager" = true;
        "privacy.resistFingerprinting.pbMode" = true;
        "privacy.resistFingerprinting.randomization.canvas.use_siphash" = true;
        "privacy.resistFingerprinting.randomization.daily_reset.enabled" = true;
        "privacy.resistFingerprinting.randomization.daily_reset.private.enabled" = true;
        "privacy.spoof_english" = 1;

        "zen.urlbar.show-newtab-button-top" = false;
        "zen.view.use-single-toolbar" = false;
        "zen.urlbar.replace-newtab" = false;
        "zen.workspaces.continue-where-left-off" = true;
        "zen.workspaces.natural-scroll" = true;
        "zen.view.compact.hide-tabbar" = true;
        "zen.view.compact.hide-toolbar" = true;
        "zen.view.compact.animate-sidebar" = false;
        "zen.welcome-screen.seen" = true;
        "zen.urlbar.behavior" = "float";
      };
    };
  };
}
