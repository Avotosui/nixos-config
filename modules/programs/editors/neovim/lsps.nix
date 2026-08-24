{
  flake.modules.homeManager.programs-editors-neovim = {pkgs, ...}: {
    home.packages = with pkgs; [
      alejandra
      nil

      bash-language-server

      cargo
      clippy
      rust-analyzer
      rustPlatform.rustLibSrc
      rustc
      rustfmt

      lua-language-server

      superhtml

      taplo

      vscode-css-languageserver

      vtsls

      yaml-language-server
    ];
  };
}
