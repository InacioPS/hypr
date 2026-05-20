hl.window_rule({
	match = { class = "^(gnome-control-center)$" },
	tile = true,
})

hl.window_rule({
	match = { class = "^(pavucontrol)$" },
	tile = true,
})

hl.window_rule({
	match = { class = "^(nm-connection-editor)$" },
	tile = true,
})

hl.window_rule({
	match = { class = "^(gnome-calculator)$" },
	float = true,
})

hl.window_rule({
	match = { class = "^(galculator)$" },
	float = true,
})

hl.window_rule({
	match = { class = "^(blueman-manager)$" },
	float = true,
})

hl.window_rule({
	match = { class = "^(steam)$" },
	float = true,
})

hl.window_rule({
	match = { class = "^(xdg-desktop-portal)$" },
	float = true,
})

hl.window_rule({
	match = {
		class = "^(firefox)$",
		title = "^(Picture-in-Picture)$",
	},
	float = true,
})

hl.window_rule({
	match = { class = "^(zoom)$" },
	float = true,
})

hl.window_rule({
	match = { class = "^(org.quickshell)$" },
	float = true,
})

hl.layer_rule({
	match = { namespace = "^(quickshell)$" },
	no_anim = true,
})
