-- config tab structure stolen from the Banner mod go check it out
SMODS.current_mod.config_tab = function()
	return {n = G.UIT.ROOT, config = {r = 0.1, minw = 4, align = "tm", padding = 0.2, colour = G.C.BLACK}, nodes = {
		{n = G.UIT.C, config = {r = 0.1, minw = 4, align = "tc", padding = 0.2, colour = G.C.BLACK}, nodes = {
			{n = G.UIT.R, config = {align = "cm", r = 0.1, padding = 0.2}, nodes = {
				create_toggle({
					label = "Hide Descriptions",
					ref_table = FB_UTIL.config,
					ref_value = 'hide_descriptions',
				})
			}},
		}},
	}}
end