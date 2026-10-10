{
  flake.modules.homeManager.programs-desktops-noctaliahyprland = {
    programs.noctalia.settings = {
      idle = {
        behavior = {
          lock = {
            action = "lock";
            timeout = 180;
          };

          screen-off = {
            action = "screen_off";
            timeout = 240;
          };

          suspend = {
            action = "lock_and_suspend";
            timeout = 480;
          };
        };

        pre_action_fade_seconds = 5.0;
      };
    };
  };
}
