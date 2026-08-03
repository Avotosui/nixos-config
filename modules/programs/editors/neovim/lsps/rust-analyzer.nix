{
  flake.modules.homeManager.programs-editors-neovim = {pkgs, ...}: {
    home.packages = with pkgs; [
      cargo
      clippy
      rust-analyzer
      rustPlatform.rustLibSrc
      rustc
      rustfmt
    ];
  };
}
