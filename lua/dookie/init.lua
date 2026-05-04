local M = {}

M.config = {
	-- Override individual palette entries. Anything not specified falls back
	-- to the default palette in lua/dookie/palette.lua.
	palette = {},

	-- Per-plugin opt-out. Set to false to skip emitting highlights for that
	-- integration, which is useful if you don't use it or want to override
	-- with your own.
	plugins = {
		git = true, -- gitgutter + gitsigns
		telescope = true,
		nvim_tree = true,
		neo_tree = true,
		notify = true,
		which_key = true,
		lazy = true,
		mini = true,
		ibl = true,
		copilot = true,
		cmp = true,
		orgmode = true,
		markdown = true, -- built-in markdown + render-markdown
	},

	-- Set g:terminal_color_0..15 to make :terminal blend with the scheme.
	terminal_colors = true,
}

function M.setup(opts)
	M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

local function hi(name, val)
	val.force = true
	val.cterm = val.cterm or {}
	vim.api.nvim_set_hl(0, name, val)
end

function M.load()
	vim.cmd.highlight("clear")
	if vim.fn.exists("syntax_on") == 1 then
		vim.cmd.syntax("reset")
	end
	vim.o.background = "light"
	vim.g.colors_name = "dookie"

	local palette = vim.tbl_extend("force", require("dookie.palette").default, M.config.palette)

	require("dookie.groups.editor").apply(hi, palette)
	require("dookie.groups.plugins").apply(hi, palette, M.config.plugins)

	if M.config.terminal_colors then
		require("dookie.groups.terminal").apply(palette)
	end
end

return M
