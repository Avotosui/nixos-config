{ inputs, ... }:
{
  imports = [
    inputs.flake-parts.flakeModules.easyOverlay
    inputs.flake-parts.flakeModules.modules
  ];
  
  system = [ "x86_64-linux" ];
}
