local config = require("shell.config")

hl.bind("XF86AudioMute", hl.dsp.exec_cmd(config.ipc .. "volume-mute"), { locked = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd(config.ipc .. "mic-mute"), { locked = true })

hl.bind("CTRL + XF86AudioRaiseVolume", hl.dsp.exec_cmd(config.ipc .. "volume-up 25"), { locked = true, repeating = true })
hl.bind("CTRL + XF86AudioLowerVolume", hl.dsp.exec_cmd(config.ipc .. "volume-down 25"), { locked = true, repeating = true })

hl.bind("SHIFT + XF86AudioRaiseVolume", hl.dsp.exec_cmd(config.ipc .. "volume-up 1"), { locked = true, repeating = true })
hl.bind("SHIFT + XF86AudioLowerVolume", hl.dsp.exec_cmd(config.ipc .. "volume-down 1"), { locked = true, repeating = true })

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(config.ipc .. "volume-up"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(config.ipc .. "volume-down"), { locked = true, repeating = true })
