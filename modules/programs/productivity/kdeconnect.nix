{
  flake.modules.nixos.programs-productivity-kdeconnect = {
    networking.firewall = let
      allowedPortRanges = [
        {
          from = 1714;
          to = 1764;
        }
      ];
    in {
      allowedTCPPortRanges = allowedPortRanges;
      allowedUDPPortRanges = allowedPortRanges;
    };
  };

  flake.modules.homeManager.programs-productivity-kdeconnect = {
    services.kdeconnect = {
      enable = true;
      indicator = true;
    };
  };
}
