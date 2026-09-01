{
  flake.modules.homeManager.programs-editors-neovim = {pkgs, ...}: {
    home.packages = with pkgs; [
      alejandra
      nil

      basedpyright

      bash-language-server

      cargo
      clippy
      rust-analyzer
      rustPlatform.rustLibSrc
      rustc
      rustfmt

      gcc

      jdk25
      jdt-language-server

      lua-language-server

      superhtml

      taplo

      vscode-css-languageserver

      vscode-json-languageserver

      vtsls

      yaml-language-server
    ];
  };
}
