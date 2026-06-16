return {
    cmd = { "rust-analyzer" }, 
    filetypes = { "rust" }, 
    root_markers = { "Cargo.lock", ".git" }, 
    settings = {
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
