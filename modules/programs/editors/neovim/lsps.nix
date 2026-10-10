{
  flake.modules.homeManager.programs-editors-neovim = {pkgs, ...}: {
    home.packages = with pkgs; [
      alejandra
      nil

      bash-language-server

      lua-language-server

      taplo

      vscode-json-languageserver

      yaml-language-server
    ];
  };
}
