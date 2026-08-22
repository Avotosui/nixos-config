{
  flake.modules.nixos.programs-desktops-noctaliahyprland = {pkgs, ...}: {
    environment.systemPackages = with pkgs; [wl-clipboard-rs];
  };

  flake.modules.homeManager.programs-desktops-noctaliahyprland = {
    programs.noctalia.settings.shell = {
      clipboard_auto_paste = "off";
      clipboard_confirm_clear_history = false;
    };
  };
}
