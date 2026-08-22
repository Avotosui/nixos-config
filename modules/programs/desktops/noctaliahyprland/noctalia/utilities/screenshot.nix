{
  flake.modules.homeManager.programs-desktops-noctaliahyprland = {
    programs.noctalia.settings.shell.screenshot = {
      directory = "/tmp";
      freeze_screen = true;
      save_to_file = false;

      pipe_command = "satty -f -";
      pipe_to_command = true;
    };

    programs.satty.enable = true;
  };
}
