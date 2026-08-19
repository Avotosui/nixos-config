local config = require("shell.config")

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(config.ipc .. "brightness-up"), { locked = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(config.ipc .. "brightness-down"), { locked = true})
