{
  flake.modules.nixos.hosts-fw13p = {
    services = {
      tlp.enable = false;

      tuned = {
        enable = true;

        ppdSettings = let
          states = {
            balanced = "latency-performance";
            performance = "throughput-performance";
            power-saver = "laptop-battery-powersave";
          };
        in {
          battery = states;
          profiles = states;
        };
      };

      upower.enable = true;
    };
  };
}
