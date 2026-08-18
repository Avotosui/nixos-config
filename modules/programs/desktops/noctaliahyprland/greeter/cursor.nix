{
  flake.modules.nixos.programs-desktops-noctaliahyprland = {
    programs.noctalia-greeter.settings.cursor = {
      theme = "breeze_cursors";
      size = 32;
    };
  };
}
