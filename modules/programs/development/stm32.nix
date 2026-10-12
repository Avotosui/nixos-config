{
  flake.modules.homeManager.programs-development-stm32 = {pkgs, ...}: {
    home.packages = with pkgs; [
      stm32cubemx
      stm32flash
      stm32loader
    ];
  };
}
