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
        friendly-snippets
        mini-nvim
        orgmode
        render-markdown-nvim

        nvim-treesitter.withAllGrammars

        tokyonight-nvim
        kanagawa-nvim
      ];

      extraPackages = with pkgs; [
        ripgrep
      ];
    };

    xdg.configFile."nvim/lua".source = ./dotfiles/lua;
    xdg.configFile."nvim/lsp".source = ./dotfiles/lsp;
    xdg.configFile."nvim/after".source = ./dotfiles/after;
  };
}
