local M = {}

function M.apply(c)
	vim.g.terminal_color_0 = c.foreground
	vim.g.terminal_color_1 = c.error
	vim.g.terminal_color_2 = c.info
	vim.g.terminal_color_3 = c.warning
	vim.g.terminal_color_4 = c.hint
	vim.g.terminal_color_5 = c.magenta
	vim.g.terminal_color_6 = c.cyan
	vim.g.terminal_color_7 = c.almost_foreground
	vim.g.terminal_color_8 = c.grey
	vim.g.terminal_color_9 = c.error
	vim.g.terminal_color_10 = c.info
	vim.g.terminal_color_11 = c.warning
	vim.g.terminal_color_12 = c.hint
	vim.g.terminal_color_13 = c.magenta
	vim.g.terminal_color_14 = c.cyan
	vim.g.terminal_color_15 = c.background
end

return M
