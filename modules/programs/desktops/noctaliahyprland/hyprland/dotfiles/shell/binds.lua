local config = require("shell.config")

hl.bind(config.mainMod .. " + T", hl.dsp.exec_cmd(config.terminal))
hl.bind(config.mainMod .. " + Q", hl.dsp.window.close())

hl.bind(config.mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(config.mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(config.mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(config.mainMod .. " + J", hl.dsp.focus({ direction = "down" }))
