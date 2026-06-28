return {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    root_markers = { ".luarc.json", ".git" },
    settings = {
        Lua = {
            runtime = { version = "LuaJIT" },
            telemetry = { enable = false },
            format = {
                defaultConfig = {
                    quote_style = "double",
                },
            },
        },
    },
}
