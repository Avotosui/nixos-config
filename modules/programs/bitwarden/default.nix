{
  flake.modules.homeManager.programs-bitwarden = {pkgs, ...}: 
  {
    home.packages = with pkgs; [
      bitwarden-cli
    ];
  };
}
