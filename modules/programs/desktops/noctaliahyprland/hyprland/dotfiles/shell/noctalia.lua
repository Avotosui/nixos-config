local config = require("shell.config")

hl.on("hyprland.start", function()
    hl.exec_cmd("noctalia")
end)

hl.bind(config.mainMod .. " + D", hl.dsp.exec_cmd(config.ipc .. "panel-toggle launcher"))
hl.bind(config.mainMod .. " + V", hl.dsp.exec_cmd(config.ipc .. "panel-toggle noctalia/mpvpaper:picker"))
hl.bind(config.mainMod .. " + S", hl.dsp.exec_cmd(config.ipc .. "panel-toggle control-center"))
hl.bind(config.mainMod .. " + W", hl.dsp.exec_cmd(config.ipc .. "panel-toggle wallpaper"))
hl.bind(config.mainMod .. " + grave", hl.dsp.exec_cmd(config.ipc .. "panel-toggle session"))
