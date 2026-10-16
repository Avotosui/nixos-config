{
  flake.modules.homeManager.programs-desktops-noctaliahyprland = {
    programs.noctalia.settings.lockscreen = {
      blur_intensity = 0.0;

      transition = ["zoom"];
      transition_duration = 500;
    };
  };
}
