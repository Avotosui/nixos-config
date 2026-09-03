local config = require("shell.config")

hl.bind("CTRL + XF86MonBrightnessUp", hl.dsp.exec_cmd(config.ipc .. "brightness-up 25"), { locked = true })
hl.bind("CTRL + XF86MonBrightnessDown", hl.dsp.exec_cmd(config.ipc .. "brightness-down 25"), { locked = true})

hl.bind("SHIFT + XF86MonBrightnessUp", hl.dsp.exec_cmd(config.ipc .. "brightness-up 1"), { locked = true })
hl.bind("SHIFT + XF86MonBrightnessDown", hl.dsp.exec_cmd(config.ipc .. "brightness-down 1"), { locked = true})

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(config.ipc .. "brightness-up"), { locked = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(config.ipc .. "brightness-down"), { locked = true})
