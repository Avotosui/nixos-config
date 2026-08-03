return {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    root_markers = { ".git", ".luarc.json" },
    settings = {
        Lua = {
            runtime = { version = "LuaJIT" },
            telemetry = { enable = false },
        },
    },
}
