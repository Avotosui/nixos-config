local config = require("shell.config")

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(config.ipc .. "volume-up"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(config.ipc .. "volume-down"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(config.ipc .. "volume-mute"))
