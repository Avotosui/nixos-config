return {
    cmd = { "nixd" },
    filetypes = { "nix" },
    root_markers = { "flake.nix", ".git" },
    settings = {
        nixd = {
            nixpkgs = {
                expr = "import <nixpkgs> {}",
            },
            formatting = {
                command = { "alejandra" },
            },
            options = {
                nixos = {
                    expr = "(builtins.getFlake (toString ./.)).nixosConfigurations.<hostname>.options",
                },
                home_manager = {
                    expr = "(builtins.getFlake (toString ./.)).nixosConfigurations.<hostname>.options.homeManager.users.type.getSubOptions []",
                },
            },
        },
    },
}
