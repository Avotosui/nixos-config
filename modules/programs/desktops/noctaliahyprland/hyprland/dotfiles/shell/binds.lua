local config = require("shell.config")

hl.bind(config.mainMod .. " + Return", hl.dsp.exec_cmd(config.terminal))
hl.bind(config.mainMod .. " + Q", hl.dsp.window.close())
hl.bind("ALT + Tab", hl.dsp.exec_cmd(config.ipc .. "window-switcher"))

hl.bind(config.mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(config.mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(config.mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(config.mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

hl.bind(config.mainMod .. " + CTRL + H", hl.dsp.window.move({ direction = "left" }))
hl.bind(config.mainMod .. " + CTRL + L", hl.dsp.window.move({ direction = "right" }))
hl.bind(config.mainMod .. " + CTRL + K", hl.dsp.window.move({ direction = "up" }))
hl.bind(config.mainMod .. " + CTRL + J", hl.dsp.window.move({ direction = "down" }))

hl.bind(config.mainMod .. " + ALT + H", hl.dsp.window.swap({ direction = "left" }))
hl.bind(config.mainMod .. " + ALT + L", hl.dsp.window.swap({ direction = "right" }))
hl.bind(config.mainMod .. " + ALT + K", hl.dsp.window.swap({ direction = "up" }))
hl.bind(config.mainMod .. " + ALT + J", hl.dsp.window.swap({ direction = "down" }))

hl.bind(config.mainMod .. " + SHIFT + H", hl.dsp.window.resize({ x = -config.resizeUnit, y = 0, relative = true }))
hl.bind(config.mainMod .. " + SHIFT + L", hl.dsp.window.resize({ x = config.resizeUnit, y = 0, relative = true }))
hl.bind(config.mainMod .. " + SHIFT + K", hl.dsp.window.resize({ x = 0, y = -config.resizeUnit, relative = true }))
hl.bind(config.mainMod .. " + SHIFT + J", hl.dsp.window.resize({ x = 0, y = config.resizeUnit, relative = true }))

for i = 1, 10 do
    local key = i % 10
    hl.bind(config.mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind(config.mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
    hl.bind(config.mainMod .. " + CTRL + " .. key, hl.dsp.window.move({ workspace = i, follow = false }))
end
