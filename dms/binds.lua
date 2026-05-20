local ipc = "qs -c noctalia-shell ipc call"

hl.bind("SUPER + SPACE", hl.dsp.exec_cmd(ipc .. " launcher toggle"))
hl.bind("SUPER + SHIFT + C", hl.dsp.exec_cmd(ipc .. " controlCenter toggle"))
hl.bind("SUPER + comma", hl.dsp.exec_cmd(ipc .. " settings toggle"))

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(ipc .. " volume increase"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(ipc .. " volume decrease"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(ipc .. " volume muteOutput"), { locked = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd(ipc .. " volume muteInput"), { locked = true })

hl.bind("XF86AudioPlay", hl.dsp.exec_cmd(ipc .. " media playPause"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd(ipc .. " media playPause"), { locked = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd(ipc .. " media next"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd(ipc .. " media previous"), { locked = true })

hl.bind("SUPER + SHIFT + K", hl.dsp.exec_cmd("qs -c noctalia-shell ipc call launcher clipboard"))

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(ipc .. " brightness increase"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(ipc .. " brightness decrease"), { locked = true, repeating = true })

hl.bind("SUPER + SHIFT + N", hl.dsp.exec_cmd(ipc .. " nightLight toggle"))
hl.bind("SUPER + SHIFT + W", hl.dsp.exec_cmd(ipc .. " wifi toggle"))
hl.bind("SUPER + SHIFT + B", hl.dsp.exec_cmd(ipc .. " bluetooth toggle"))

hl.bind("SUPER + SHIFT + P", hl.dsp.exec_cmd(ipc .. " powerProfile cycle"))
hl.bind("SUPER + P", hl.dsp.exec_cmd(ipc .. " media toggle"))
hl.bind("SUPER + Y", hl.dsp.exec_cmd(ipc .. " wallpaper toggle"))
hl.bind("SUPER + L", hl.dsp.exec_cmd(ipc .. " lockScreen lock"))
hl.bind("SUPER + X", hl.dsp.exec_cmd(ipc .. " sessionMenu toggle"))

for i = 1, 9 do
	hl.bind("SUPER + " .. i, hl.dsp.focus({ workspace = i }))
	hl.bind("SUPER + SHIFT + " .. i, hl.dsp.window.move({ workspace = i }))
end

hl.bind("SUPER + CTRL + I", hl.dsp.window.move({ workspace = "e-1" }))
hl.bind("SUPER + CTRL + U", hl.dsp.window.move({ workspace = "e+1" }))
hl.bind("SUPER + CTRL + down", hl.dsp.window.move({ workspace = "e+1" }))
hl.bind("SUPER + CTRL + mouse_down", hl.dsp.window.move({ workspace = "e+1" }))
hl.bind("SUPER + CTRL + mouse_up", hl.dsp.window.move({ workspace = "e-1" }))
hl.bind("SUPER + CTRL + up", hl.dsp.window.move({ workspace = "e-1" }))

hl.bind("SUPER + I", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("SUPER + Page_Down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + Page_Up", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("SUPER + S", hl.dsp.workspace.toggle_special())

hl.bind("SUPER + SHIFT + I", hl.dsp.window.move({ workspace = "e-1" }))
hl.bind("SUPER + SHIFT + Page_Down", hl.dsp.window.move({ workspace = "e+1" }))
hl.bind("SUPER + SHIFT + Page_Up", hl.dsp.window.move({ workspace = "e-1" }))
hl.bind("SUPER + SHIFT + S", hl.dsp.window.move({ workspace = "special" }))
hl.bind("SUPER + SHIFT + TAB", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("SUPER + SHIFT + U", hl.dsp.window.move({ workspace = "e+1" }))

hl.bind("SUPER + TAB", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + U", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

hl.bind("SUPER + CTRL + F", hl.dsp.exec_cmd("hyprctl dispatch resizeactive exact 100%"))

hl.bind("SUPER + CTRL + H", hl.dsp.focus({ monitor = "l" }))
hl.bind("SUPER + CTRL + J", hl.dsp.focus({ monitor = "d" }))
hl.bind("SUPER + CTRL + K", hl.dsp.focus({ monitor = "u" }))
hl.bind("SUPER + CTRL + L", hl.dsp.focus({ monitor = "r" }))
hl.bind("SUPER + CTRL + left", hl.dsp.focus({ monitor = "l" }))
hl.bind("SUPER + CTRL + right", hl.dsp.focus({ monitor = "r" }))

hl.bind("SUPER + End", hl.dsp.focus({ window = "last" }))
hl.bind("SUPER + H", hl.dsp.focus({ direction = "l" }))
hl.bind("SUPER + Home", hl.dsp.focus({ window = "first" }))
hl.bind("SUPER + J", hl.dsp.focus({ direction = "d" }))
hl.bind("SUPER + K", hl.dsp.focus({ direction = "u" }))

hl.bind("SUPER + SHIFT + CTRL + H", hl.dsp.window.move({ monitor = "l" }))
hl.bind("SUPER + SHIFT + CTRL + J", hl.dsp.window.move({ monitor = "d" }))
hl.bind("SUPER + SHIFT + CTRL + K", hl.dsp.window.move({ monitor = "u" }))
hl.bind("SUPER + SHIFT + CTRL + L", hl.dsp.window.move({ monitor = "r" }))
hl.bind("SUPER + SHIFT + CTRL + down", hl.dsp.window.move({ monitor = "d" }))
hl.bind("SUPER + SHIFT + CTRL + left", hl.dsp.window.move({ monitor = "l" }))
hl.bind("SUPER + SHIFT + CTRL + right", hl.dsp.window.move({ monitor = "r" }))
hl.bind("SUPER + SHIFT + CTRL + up", hl.dsp.window.move({ monitor = "u" }))

hl.bind("SUPER + SHIFT + H", hl.dsp.window.move({ direction = "l" }))
hl.bind("SUPER + SHIFT + J", hl.dsp.window.move({ direction = "d" }))
hl.bind("SUPER + SHIFT + L", hl.dsp.window.move({ direction = "r" }))
hl.bind("SUPER + SHIFT + down", hl.dsp.window.move({ direction = "d" }))
hl.bind("SUPER + SHIFT + equal", hl.dsp.exec_cmd("hyprctl dispatch resizeactive 0 10%"), { repeating = true })
hl.bind("SUPER + SHIFT + left", hl.dsp.window.move({ direction = "l" }))
hl.bind("SUPER + SHIFT + minus", hl.dsp.exec_cmd("hyprctl dispatch resizeactive 0 -10%"), { repeating = true })
hl.bind("SUPER + SHIFT + right", hl.dsp.window.move({ direction = "r" }))
hl.bind("SUPER + SHIFT + up", hl.dsp.window.move({ direction = "u" }))

hl.bind("SUPER + code:20", hl.dsp.exec_cmd("hyprctl dispatch resizeactive -100 0"))
hl.bind("SUPER + code:21", hl.dsp.exec_cmd("hyprctl dispatch resizeactive 100 0"))

hl.bind("SUPER + down", hl.dsp.focus({ direction = "d" }))
hl.bind("SUPER + equal", hl.dsp.exec_cmd("hyprctl dispatch resizeactive 10% 0"), { repeating = true })
hl.bind("SUPER + left", hl.dsp.focus({ direction = "l" }))
hl.bind("SUPER + minus", hl.dsp.exec_cmd("hyprctl dispatch resizeactive -10% 0"), { repeating = true })
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })
hl.bind("SUPER + right", hl.dsp.focus({ direction = "r" }))
hl.bind("SUPER + up", hl.dsp.focus({ direction = "u" }))

hl.bind("SUPER + C", hl.dsp.window.center())
hl.bind("SUPER + E", hl.dsp.exec_cmd("dolphin --new-window"))
hl.bind("ALT + SPACE", hl.dsp.exec_cmd("hyprctl switchxkblayout keyboard next"))
hl.bind("SUPER + B", hl.dsp.exec_cmd("firefox"))
hl.bind("SUPER + D", hl.dsp.exec_cmd("discord"))
hl.bind("SUPER + M", hl.dsp.exec_cmd("spotify"))
hl.bind("SUPER + N", hl.dsp.exec_cmd("kitty -e nvim"))
hl.bind("SUPER + O", hl.dsp.exec_cmd("obsidian"))
hl.bind("SUPER + Return", hl.dsp.exec_cmd("kitty"))
hl.bind("XF86Calculator", hl.dsp.exec_cmd("gnome-calculator"))
hl.bind("SUPER + SHIFT + E", hl.dsp.exit())
hl.bind("SUPER + Q", hl.dsp.window.close())
hl.bind("SUPER + R", hl.dsp.layout("togglesplit"))
hl.bind("SUPER + bracketleft", hl.dsp.layout("preselect l"))
hl.bind("SUPER + bracketright", hl.dsp.layout("preselect r"))
hl.bind("SUPER + F", hl.dsp.window.fullscreen())
hl.bind("SUPER + V", hl.dsp.window.float({ action = "toggle" }))

hl.bind("CTRL + Return", hl.dsp.exec_cmd("handy --toggle-transcription"))

hl.bind("ALT + T", hl.dsp.exec_cmd("hyprshot -m output"))
hl.bind("ALT + Q", hl.dsp.exec_cmd("hyprshot -m region"))
hl.bind("ALT + W", hl.dsp.exec_cmd("hyprshot -m window"))

-- CTRL + scroll → mover foco entre janelas
hl.bind("CTRL + mouse_down", hl.dsp.focus({ direction = "r" }))
hl.bind("CTRL + mouse_up", hl.dsp.focus({ direction = "l" }))
