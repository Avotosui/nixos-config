{
  flake.modules.homeManager.programs-socials-vencord = {
    programs.vesktop = {
      enable = true;

      settings = {
        appBadge = true;
        autoStartMinimized = true;
        clickTrayToShowHide = false;
        enableTaskbarFlashing = false;
        minimizeToTray = false;
        tray = true;

        audio = {
          deviceSelect = true;
          granularSelect = true;

          ignoreDevices = true;
          ignoreInputMedia = true;
          ignoreVirtual = true;

          mute = true;
          onlyDefaultSpeakers = true;
          onlySpeakers = true;

          workaround = true;
        };

        arRPC = false;
        webRTCIPHandlingPolicy = "default_public_and_private_interfaces";

        customTitleBar = false;
        disableSmoothScroll = true;
        enableMenu = false;
        staticTitle = true;
        transparencyOption = "none";

        disableMinSize = true;

        discordBranch = "stable";

        hardwareAcceleration = true;
        hardwareVideoAcceleration = true;

        openLinksWithElectron = false;
      };

      vencord = {
        settings = {
          autoUpdate = false;
          autoUpdateNotification = false;

          disableMinSize = true;
          frameless = false;
          transparent = false;

          eagerPatches = false;
          enabledThemes = [];
          themeLinks = [];
          useQuickCss = false;

          enableReactDevtools = false;

          macosVibrancyStyle = null;
          winCtrlQ = false;
          winNativeTitleBar = false;
          windowsMaterial = "none";

          plugins = {
            AnonymiseFileNames.enabled = true;
            CrashHandler.enabled = true;
            MessageLogger.enabled = true;
            RelationshipNotifier = {
              enabled = true;
              notices = true;
            };
            WebContextMenus.enabled = true;
            WebKeybinds.enabled = true;
            WebScreenShareFixes.enabled = true;
          };

          useSystem = true;
        };
      };
    };
  };
}
