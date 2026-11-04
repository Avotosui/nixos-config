{
  flake.modules.homeManager.programs-development-openocd = {pkgs, ...}: {
    home.packages = with pkgs; [openocd];
  };
}
