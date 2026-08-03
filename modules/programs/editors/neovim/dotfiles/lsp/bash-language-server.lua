return {
    cmd = { "bash-language-server", "start" },
    filetypes = { "bash", "sh", "zsh" },
    root_markers = { ".git" },
    settings = {
        bashIde = {
            shfmt = {
                caseIndent = true,
                ignoreEditorconfig = true,
            },
        },
    },
}
