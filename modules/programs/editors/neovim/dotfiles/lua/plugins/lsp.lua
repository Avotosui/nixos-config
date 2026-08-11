vim.diagnostic.config({ virtual_text = true })

local MiniCompletion = require("mini.completion")
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = vim.tbl_deep_extend("force", capabilities, MiniCompletion.get_lsp_capabilities())
vim.lsp.config("*", { capabilities = capabilities })

vim.lsp.enable({
    "bash-language-server",
    "lua-language-server",
    "nil",
    "rust-analyzer",
    "superhtml",
    "taplo",
    "vscode-css-language-server",
    "vtsls",
    "yaml-language-server",
})
