local primary = "rgb(ffc799)"
local surface = "rgb(0c0c0c)"
local secondary = "rgb(99ffe4)"
local error = "rgb(ff8080)"
local tertiary = "rgb(fbadff)"
local surface_lowest = "rgb(0f0f0f)"

hl.config({
	general = {
		col = {
			active_border = primary,
			inactive_border = surface,
		},
	},

	group = {
		col = {
			border_active = secondary,
			border_inactive = surface,
			border_locked_active = error,
			border_locked_inactive = surface,
		},

		groupbar = {
			col = {
				active = secondary,
				inactive = surface,
				locked_active = error,
				locked_inactive = surface,
			},
		},
	},
})
