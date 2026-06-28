local MiniNotify = require("mini.notify")
MiniNotify.setup({
    content = {
        format = function(notif)
            return notif.msg
        end,
    },
})

local MiniCompletion = require("mini.completion")
MiniCompletion.setup({
    lsp_completion = { auto_setup = true },
})
