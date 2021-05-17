local flatwhite = {

	white =         '#f8f4ec',
	gray =          '#8c8c8c',
	black =         '#2b3239',
	red =           '#ff757f',
	green =         '#e4ecc4',
	yellow =        '#ffc777',
	paleblue =      '#d6e7f0',
	cyan =          '#d3ebe3',
	blue =          '#dbe3f3',
	purple =        '#ecb2f0',
	orange =        '#f67f81',
	pink =          '#f3dbf3',

	bg =            '#f8f4ec',
	bg_alt =        '#e6dfd5',
	fg =            '#706c63',
	text =          '#8d8372',
	comments =      '#b4a48e',
	selection =     '#d8d4cd',
	contrast =      '#9d8d7d',
	active =        '#d8d4cd',
	border =        '#7484a3',
	line_numbers =  '#a69887',
	highlight =     '#d8d4cd',
	disabled =      '#515772',
	cursor =        '#74849c',
	accent =        '#7484a3',

	error =         '#FF5370',
	link =          '#80CBC4',

	none =          'NONE'
}

-- Optional colors

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.flatwhite_contrast == false then
    flatwhite.sidebar = moonlight.bg
    flatwhite.float = moonlight.bg
else
    flatwhite.sidebar = moonlight.bg_alt
    flatwhite.float = moonlight.bg_alt
end

return flatwhite
