local config = require("shell.config")

hl.bind(config.mainMod .. "+ CTRL + SHIFT + ALT + L", hl.dsp.exec_cmd(config.ipc .. "session lock"))

hl.bind("switch:on:Lid Switch", hl.dsp.exec_cmd(config.ipc .. "session lock-and-suspend"), { locked = true })
