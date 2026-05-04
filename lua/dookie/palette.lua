local M = {}

-- Plan9 Acme canonical colors plus accents for modern editor needs.
-- Acme-canonical entries are commented as such; the rest are personal-touch
-- accents used for diagnostics, git, state indicators, and terminal output
-- (Acme itself has no syntax highlighting, no LSP, and no concept of these).
M.default = {
	-- Acme-canonical
	foreground = "#000000",
	almost_foreground = "#b7b19c",
	background = "#ffffea", -- palewhite (body bg)
	dim_background = "#ffffca", -- paleyellow
	darker_background = "#eeee9e", -- darkyellow (body selection)
	statusline = "#aeeeee", -- ~palebluegreen (tag selection)
	statusline_inactive = "#eaffff", -- paleblue (tag bg)
	border = "#8888cc", -- Acme column-divider blue

	-- Personal-touch accents
	cursor = "#98ce8f",
	error = "#b85c57",
	warning = "#8f7634",
	info = "#57864e",
	hint = "#2a8dc5",

	-- Extended (used only by :terminal mappings, not editor highlights)
	magenta = "#8a4f8a",
	cyan = "#2a8d8d",
	grey = "#555555",
}

return M
