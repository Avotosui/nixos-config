return {
    cmd = { "rust-analyzer" },
    filetypes = { "rust" },
    root_markers = { ".git", "Cargo.lock" },
    setting = {
        ["rust-analyzer"] = {
            check = {
                command = "clippy",
                invocationLocation = "workspace",
                features = "all",
            },
            diagnostics = {
                enable = true,
                styleLints = { enable = true },
                experimental = { enable = true },
            },
            rustfmt = { rangeFormatting = { enable = true } },
        },
    },
}
