{
  flake.modules.nixos.programs-desktops-noctaliahyprland = {
    services.displayManager.noctalia-greeter = {
      enable = true;
      extraArgs = [
        "--session"
        "Hyprland (uwsm-managed)"
      ];
    };
  };
}
