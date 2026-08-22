local config = require("shell.config")

hl.bind("Print", hl.dsp.exec_cmd(config.ipc .. "screenshot-fullscreen"))
hl.bind(config.mainMod .. " + SHIFT + S", hl.dsp.exec_cmd(config.ipc .. "screenshot-region"))
