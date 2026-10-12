{
  flake.modules.homeManager.programs-networking-ookla = {pkgs, ...}: {
    home.packages = with pkgs; [ookla-speedtest];
  };
}
