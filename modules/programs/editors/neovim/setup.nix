{
  flake.modules.homeManager.programs-editors-neovim = {
    config,
    pkgs,
    ...
  }: {
    programs.neovim = {
      enable = true;
      sideloadInitLua = true;

      plugins = with pkgs.vimPlugins; [
        friendly-snippets
        mini-nvim
        netrw-nvim
        render-markdown-nvim

        nvim-treesitter.withAllGrammars

        tokyonight-nvim
        kanagawa-nvim
      ];

      extraPackages = with pkgs; [
        ripgrep
      ];
    };

    xdg.configFile."nvim" = {
      recursive = true;
      source = ./dotfiles;
    };
  };
}
