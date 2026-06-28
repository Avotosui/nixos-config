{
  flake.modules.homeManager.programs-editors-neovim = {
    config,
    pkgs,
    ...
  }: {
    programs.neovim = {
      enable = true;
      defaultEditor = true;

      initLua = builtins.readFile ./dotfiles/init.lua;

      plugins = with pkgs.vimPlugins; [
        mini-nvim
        render-markdown-nvim

        nvim-treesitter.withAllGrammars
      ];
    };

    home.file."./.config/nvim/lua" = {
      source = config.lib.file.mkOutOfStoreSymlink ./dotfiles/lua;
    };

    home.file."./.config/nvim/lsp" = {
      source = config.lib.file.mkOutOfStoreSymlink ./dotfiles/lsp;
    };

    home.file."./.config/nvim/after" = {
      source = config.lib.file.mkOutOfStoreSymlink ./dotfiles/after;
    };
  };
}
