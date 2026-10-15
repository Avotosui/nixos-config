{
  flake.modules.nixos.programs-gaming-steam = {pkgs, ...}: {
    programs.steam = {
      enable = true;
      remotePlay.openFirewall = true;
      localNetworkGameTransfers.openFirewall = true;
      protontricks.enable = true;
      gamescopeSession.enable = true;
      extraCompatPackages = with pkgs; [
        proton-ge-bin
        dwproton-bin
      ];
    };

    programs.gamemode.enable = true;
  };
}
