local config = require("shell.config")

hl.bind(config.mainMod .. " + Return", hl.dsp.exec_cmd(config.terminal))
hl.bind(config.mainMod .. " + Q", hl.dsp.window.close())
hl.bind("ALT + Tab", function()
    hl.dispatch(hl.dsp.window.cycle_next())
    hl.dispatch(hl.dsp.window.alter_zorder({ mode = "top" }))
end, { repeating = true })

local allfloat_state = {}
local function toggle_workspace_allfloat()
    local workspace = hl.get_active_workspace()
    if workspace == nil then return end

    local id = workspace.id
    local turning_on = not allfloat_state[id]
    allfloat_state[id] = turning_on

    local windows = hl.get_workspace_windows(workspace)
    for _, window in ipairs(windows) do
        if turning_on and not window.floating then
            hl.dispatch(hl.dsp.window.float({ action = "set", window = window }))
        elseif not turning_on and window.floating then
            hl.dispatch(hl.dsp.window.float({ action = "unset", window = window }))
        end
    end

    hl.window_rule({
        name = "allfloat_ws_" .. tostring(id),
        match = { workspace = tostring(id) },
        float = turning_on,
    })
end

hl.bind(config.mainMod .. " + SPACE", hl.dsp.window.float({ action = "toggle" }))
hl.bind(config.mainMod .. " + ALT + SPACE", toggle_workspace_allfloat)
hl.bind(config.mainMod .. " + SHIFT + I", hl.dsp.layout("togglesplit"))
hl.bind(config.mainMod .. " + P", hl.dsp.window.pseudo())

hl.bind(config.mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(config.mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(config.mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(config.mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

hl.bind(config.mainMod .. " + CTRL + H", hl.dsp.window.move({ direction = "left" }))
hl.bind(config.mainMod .. " + CTRL + L", hl.dsp.window.move({ direction = "right" }))
hl.bind(config.mainMod .. " + CTRL + K", hl.dsp.window.move({ direction = "up" }))
hl.bind(config.mainMod .. " + CTRL + J", hl.dsp.window.move({ direction = "down" }))

hl.bind(config.mainMod .. " + G", hl.dsp.group.toggle())
hl.bind(config.mainMod .. " + ALT + H", hl.dsp.window.swap({ direction = "left" }))
hl.bind(config.mainMod .. " + ALT + L", hl.dsp.window.swap({ direction = "right" }))
hl.bind(config.mainMod .. " + ALT + K", hl.dsp.window.swap({ direction = "up" }))
hl.bind(config.mainMod .. " + ALT + J", hl.dsp.window.swap({ direction = "down" }))

hl.bind(config.mainMod .. " + SHIFT + H", hl.dsp.window.resize({ x = -config.resizeUnit, y = 0, relative = true }))
hl.bind(config.mainMod .. " + SHIFT + L", hl.dsp.window.resize({ x = config.resizeUnit, y = 0, relative = true }))
hl.bind(config.mainMod .. " + SHIFT + K", hl.dsp.window.resize({ x = 0, y = -config.resizeUnit, relative = true }))
hl.bind(config.mainMod .. " + SHIFT + J", hl.dsp.window.resize({ x = 0, y = config.resizeUnit, relative = true }))

hl.bind(config.mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(config.mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

for i = 1, 10 do
    local key = i % 10
    hl.bind(config.mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind(config.mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
    hl.bind(config.mainMod .. " + CTRL + " .. key, hl.dsp.window.move({ workspace = i, follow = false }))
end

hl.bind(config.mainMod .. " + Tab", hl.dsp.focus({ workspace = "m+1" }))
hl.bind(config.mainMod .. " + SHIFT + Tab", hl.dsp.focus({ workspace = "m-1" }))
