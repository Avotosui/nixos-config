{
  flake.modules.nixos.programs-networking-tailscale = {config, ...}: {
    services.tailscale.enable = true;

    networking.firewall = {
      trustedInterfaces = [ config.services.tailscale.interfaceName ];
      allowedUDPPorts = [ config.services.tailscale.port ];
    };

    systemd = {
      services.tailscaled.serviceConfig.Environment = [
        "TS_DEBUG_FIREWALL_MODE=nftables"
      ];
      network.wait-online.enable = false;
    };
    boot.initrd.systemd.network.wait-online.enable = false;
  };
}
