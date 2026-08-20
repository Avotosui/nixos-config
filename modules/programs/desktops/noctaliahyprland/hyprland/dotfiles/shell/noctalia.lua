local config = require("shell.config")

hl.on("hyprland.start", function()
    hl.exec_cmd("noctalia")
end)

hl.bind(config.mainMod .. "+ D", hl.dsp.exec_cmd(config.ipc .. "panel-toggle launcher"))
hl.bind(config.mainMod .. "+ S", hl.dsp.exec_cmd(config.ipc .. "panel-toggle control-center"))
