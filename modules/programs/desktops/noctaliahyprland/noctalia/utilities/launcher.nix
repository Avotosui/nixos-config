{
  flake.modules.homeManager.programs-desktops-noctaliahyprland = {
    programs.noctalia.settings.shell.launcher = {
      auto_paste = "off";
      provider_prefix = "@";

      categories = false;
      compact = true;
      sort_by_usage = false;

      providers.calculator.global = false;
    };
  };
}
