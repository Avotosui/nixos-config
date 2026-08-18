local config = require("shell.config")

hl.on("hyprland.start", function()
    hl.exec_cmd("noctalia")
end)

hl.bind(config.mainMod .. "+Space", hl.dsp.exec_cmd(config.ipc .. "panel-toggle launcher"))
hl.bind(config.mainMod .. "+S", hl.dsp.exec_cmd(config.ipc .. "panel-toggle control-center"))
hl.bind(config.mainMod .. "+comma", hl.dsp.exec_cmd(config.ipc .. "settings-toggle"))
hl.bind("ALT + Tab", hl.dsp.exec_cmd(config.ipc .. "window-switcher"))
