vim.diagnostic.config({ virtual_text = true })

local MiniCompletion = require("mini.completion")
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = vim.tbl_deep_extend("force", capabilities, MiniCompletion.get_lsp_capabilities())
vim.lsp.config("*", { capabilities = capabilities })

vim.lsp.enable({
    "bash",
    "lua", 
    "nix", 
    "rust", 
    "toml",
})
