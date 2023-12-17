local bufferline = require('bufferline')
bufferline.setup({
	options = {
		hover = {
			enabled = true,
			delay = 200,
			reveal = { 'close' }
		},

		buffer_close_icon = '󰅖',
		modified_icon = '●',
		close_icon = '',
		left_trunc_marker = '',
		right_trunc_marker = '',
		indicator = {
			style = 'none',
		},
	}
})
