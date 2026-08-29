{
  flake.modules.homeManager.programs-versioncontrol-forgejocli = {pkgs, ...}: {
    home.packages = with pkgs; [forgejo-cli];
  };
}
