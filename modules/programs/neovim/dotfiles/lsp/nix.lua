return {
    cmd = { "nil" }, 
    filetypes = { "nix" }, 
    root_markers = { "flake.nix", ".git" }, 
    settings = {
        nix = {
            binary = "nix", 
	        maxMemoryMB = nil, 
	        flake = {
                autoEvalInputs = false, 
		        autoArchive = false, 
            }, 
        }, 
	    ["nil"] = {
	        formatting = { command = { "alejandra" } }, 
        }, 
    }, 
}
