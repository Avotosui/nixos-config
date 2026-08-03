{
  flake.modules.homeManager.programs-editors-neovim = {pkgs, ...}: {
    home.packages = with pkgs; [lua-language-server];
  };
}
