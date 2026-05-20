hl.config({
	general = {
		border_size = 2,

		col = {
			inactive_border = { colors = { "0xffffffff" }, angle = 0 },
			active_border = { colors = { "0xff77767b" }, angle = 0 },
		},
	},
})

hl.curve("easeInOutQuad", {
	type = "bezier",
	points = { { 0.45, 0.0 }, { 0.15, 1.0 } },
})

hl.animation({ leaf = "windows", enabled = true, speed = 8.0, bezier = "default" })
hl.animation({ leaf = "layers", enabled = true, speed = 8.0, bezier = "default" })
hl.animation({ leaf = "fade", enabled = true, speed = 3.0, bezier = "easeInOutQuad" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 3.0, bezier = "default" })
