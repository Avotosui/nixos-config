{
  flake.modules.nixos.programs-desktops-noctaliahyprland = {lib, pkgs, ...}: {
    services.greetd.settings.default_session.command = lib.mkForce "env WLR_NO_HARDWARE_CURSORS=1 ${pkgs.noctalia-greeter}/bin/noctalia-greeter-session"; # VM-ONLY delete later
    programs.noctalia-greeter.settings.cursor = {
      path = "${pkgs.simp1e-cursors}/share/icons";
      size = 24;
      theme = "Simp1e-Tokyo-Night";
    };
  };
}
