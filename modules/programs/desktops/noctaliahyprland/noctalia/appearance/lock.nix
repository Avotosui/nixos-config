{
  flake.modules.homeManager.programs-desktops-noctaliahyprland = {
    programs.noctalia.settings.lockscreen = {
      blur_intensity = 0.0;

      lock_before_suspend = true;

      transition = ["zoom"];
      transition_duration = 500;
    };
  };
}
