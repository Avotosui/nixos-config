vim.g.mapleader = " "

vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>lr", vim.lsp.buf.references)
vim.keymap.set("n", "<leader>ln", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>ld", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>lq", vim.diagnostic.setloclist)

vim.keymap.set("n", "<leader>-", function()
  require("yazi").yazi()
end)

vim.keymap.set("n", "<leader>ff", function()
    require("telescope.builtin").find_files()
end)
vim.keymap.set("n", "<leader>fg", function()
    require("telescope.builtin").live_grep()
end)
vim.keymap.set("n", "<leader>fb", function()
    require("telescope.builtin").buffers()
end)
