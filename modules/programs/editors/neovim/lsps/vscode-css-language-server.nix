{
  flake.modules.homeManager.programs-editors-neovim = {pkgs, ...}: {
    home.packages = with pkgs; [vscode-langservers-extracted];
  };
}
