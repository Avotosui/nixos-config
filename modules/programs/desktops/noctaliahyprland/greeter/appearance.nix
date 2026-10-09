{
  flake.modules.nixos.programs-desktops-noctaliahyprland = {
    services.displayManager.noctalia-greeter.settings.appearance.scheme = "Tokyo-Night";
  };
}
