local colors = require('flatwhite.colors')

local flatwhite = {}

flatwhite.normal = {
	a = {fg = colors.bg, bg = colors.accent, gui = 'bold'},
	b = {fg = colors.title, bg = colors.active},
	c = {fg = colors.fg, bg = colors.selection},
}

flatwhite.insert = {
	a = {fg = colors.bg, bg = colors.green, gui = 'bold'},
	b = {fg = colors.title, bg = colors.active},
}

flatwhite.visual = {
	a = {fg = colors.bg, bg = colors.purple, gui = 'bold'},
	b = {fg = colors.title, bg = colors.active},
}

flatwhite.replace = {
	a = {fg = colors.bg, bg = colors.red, gui = 'bold'},
	b = {fg = colors.title, bg = colors.active},
}

flatwhite.command = {
	a = {fg = colors.bg, bg = colors.yellow, gui = 'bold'},
	b = {fg = colors.title, bg = colors.active},
}

flatwhite.inactive = {
  a = {fg = colors.disabled, bg = colors.bg, gui = 'bold'},
  b = {fg = colors.disabled, bg = colors.bg},
  c = {fg = colors.disabled, bg = colors.selection}
}

return flatwhite
