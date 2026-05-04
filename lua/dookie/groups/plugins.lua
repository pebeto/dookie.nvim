local M = {}

local function git(hi, c)
	-- gitgutter
	hi("GitGutterAdd", { fg = c.info })
	hi("GitGutterChange", { fg = c.warning })
	hi("GitGutterDelete", { fg = c.error })

	-- gitsigns
	hi("GitSignsAdd", { fg = c.info })
	hi("GitSignsChange", { fg = c.warning })
	hi("GitSignsDelete", { fg = c.error })
	hi("GitSignsCurrentLineBlame", { fg = c.almost_foreground, bg = c.background, italic = true })
	hi("GitSignsAddNr", { fg = c.info, bg = c.dim_background })
	hi("GitSignsChangeNr", { fg = c.warning, bg = c.dim_background })
	hi("GitSignsDeleteNr", { fg = c.error, bg = c.dim_background })
	hi("GitSignsAddLn", { bg = c.dim_background })
	hi("GitSignsChangeLn", { bg = c.dim_background })
	hi("GitSignsDeleteLn", { bg = c.dim_background })
end

local function telescope(hi, c)
	hi("TelescopeNormal", { fg = c.foreground, bg = c.background })
	hi("TelescopeBorder", { fg = c.foreground, bg = c.background })
	hi("TelescopeTitle", { fg = c.foreground, bg = c.background, bold = true })
	hi("TelescopePromptNormal", { fg = c.foreground, bg = c.dim_background })
	hi("TelescopePromptBorder", { fg = c.foreground, bg = c.dim_background })
	hi("TelescopePromptTitle", { fg = c.foreground, bg = c.dim_background, bold = true })
	hi("TelescopePromptPrefix", { fg = c.foreground, bg = c.dim_background, bold = true })
	hi("TelescopePromptCounter", { fg = c.almost_foreground, bg = c.dim_background })
	hi("TelescopePreviewTitle", { fg = c.foreground, bg = c.background, bold = true })
	hi("TelescopeResultsTitle", { fg = c.foreground, bg = c.background, bold = true })
	hi("TelescopeSelection", { fg = c.foreground, bg = c.darker_background, bold = true })
	hi("TelescopeSelectionCaret", { fg = c.foreground, bg = c.darker_background, bold = true })
	hi("TelescopeMultiSelection", { fg = c.foreground, bg = c.dim_background })
	hi("TelescopeMatching", { fg = c.foreground, bold = true, underline = true })
end

local function nvim_tree(hi, c)
	hi("NvimTreeNormal", { fg = c.foreground, bg = c.background })
	hi("NvimTreeNormalNC", { fg = c.foreground, bg = c.background })
	hi("NvimTreeWinSeparator", { fg = c.border, bg = c.background })
	hi("NvimTreeRootFolder", { fg = c.foreground, bold = true })
	hi("NvimTreeFolderName", { fg = c.foreground, bold = true })
	hi("NvimTreeOpenedFolderName", { fg = c.foreground, bold = true })
	hi("NvimTreeEmptyFolderName", { fg = c.almost_foreground })
	hi("NvimTreeFolderIcon", { fg = c.foreground })
	hi("NvimTreeFileIcon", { fg = c.foreground })
	hi("NvimTreeOpenedFile", { fg = c.foreground, bold = true })
	hi("NvimTreeSpecialFile", { fg = c.foreground, italic = true })
	hi("NvimTreeGitDirty", { fg = c.warning })
	hi("NvimTreeGitStaged", { fg = c.info })
	hi("NvimTreeGitNew", { fg = c.info })
	hi("NvimTreeGitDeleted", { fg = c.error })
	hi("NvimTreeGitMerge", { fg = c.error })
	hi("NvimTreeGitRenamed", { fg = c.warning })
	hi("NvimTreeIndentMarker", { fg = c.almost_foreground })
	hi("NvimTreeCursorLine", { bg = c.dim_background })
end

local function neo_tree(hi, c)
	hi("NeoTreeNormal", { fg = c.foreground, bg = c.background })
	hi("NeoTreeNormalNC", { fg = c.foreground, bg = c.background })
	hi("NeoTreeWinSeparator", { fg = c.border, bg = c.background })
	hi("NeoTreeRootName", { fg = c.foreground, bold = true })
	hi("NeoTreeDirectoryName", { fg = c.foreground, bold = true })
	hi("NeoTreeFileName", { fg = c.foreground })
	hi("NeoTreeFileNameOpened", { fg = c.foreground, bold = true })
	hi("NeoTreeIndentMarker", { fg = c.almost_foreground })
	hi("NeoTreeGitAdded", { fg = c.info })
	hi("NeoTreeGitConflict", { fg = c.error })
	hi("NeoTreeGitDeleted", { fg = c.error })
	hi("NeoTreeGitIgnored", { fg = c.almost_foreground })
	hi("NeoTreeGitModified", { fg = c.warning })
	hi("NeoTreeGitUntracked", { fg = c.info, italic = true })
	hi("NeoTreeCursorLine", { bg = c.dim_background })
end

local function notify(hi, c)
	hi("NotifyERRORBorder", { fg = c.error, bg = c.background })
	hi("NotifyWARNBorder", { fg = c.warning, bg = c.background })
	hi("NotifyINFOBorder", { fg = c.info, bg = c.background })
	hi("NotifyDEBUGBorder", { fg = c.almost_foreground, bg = c.background })
	hi("NotifyTRACEBorder", { fg = c.hint, bg = c.background })
	hi("NotifyERRORIcon", { fg = c.error })
	hi("NotifyWARNIcon", { fg = c.warning })
	hi("NotifyINFOIcon", { fg = c.info })
	hi("NotifyDEBUGIcon", { fg = c.almost_foreground })
	hi("NotifyTRACEIcon", { fg = c.hint })
	hi("NotifyERRORTitle", { fg = c.error, bold = true })
	hi("NotifyWARNTitle", { fg = c.warning, bold = true })
	hi("NotifyINFOTitle", { fg = c.info, bold = true })
	hi("NotifyDEBUGTitle", { fg = c.almost_foreground, bold = true })
	hi("NotifyTRACETitle", { fg = c.hint, bold = true })
	hi("NotifyERRORBody", { link = "Normal" })
	hi("NotifyWARNBody", { link = "Normal" })
	hi("NotifyINFOBody", { link = "Normal" })
	hi("NotifyDEBUGBody", { link = "Normal" })
	hi("NotifyTRACEBody", { link = "Normal" })
end

local function which_key(hi, c)
	hi("WhichKey", { fg = c.foreground, bold = true })
	hi("WhichKeyGroup", { fg = c.foreground, italic = true })
	hi("WhichKeyDesc", { fg = c.foreground })
	hi("WhichKeySeparator", { fg = c.almost_foreground })
	hi("WhichKeyFloat", { bg = c.background })
	hi("WhichKeyBorder", { fg = c.foreground, bg = c.background })
	hi("WhichKeyValue", { fg = c.almost_foreground })
end

local function lazy(hi, c)
	hi("LazyNormal", { fg = c.foreground, bg = c.background })
	hi("LazyButton", { fg = c.foreground, bg = c.dim_background })
	hi("LazyButtonActive", { fg = c.foreground, bg = c.darker_background, bold = true })
	hi("LazyH1", { fg = c.foreground, bg = c.darker_background, bold = true })
	hi("LazyH2", { fg = c.foreground, bold = true })
	hi("LazySpecial", { fg = c.hint })
	hi("LazyProp", { fg = c.foreground, bold = true })
	hi("LazyValue", { fg = c.foreground })
	hi("LazyDir", { fg = c.foreground, italic = true })
	hi("LazyUrl", { fg = c.hint, underline = true })
	hi("LazyCommit", { fg = c.warning })
	hi("LazyReasonPlugin", { fg = c.foreground })
	hi("LazyReasonEvent", { fg = c.info })
	hi("LazyReasonKeys", { fg = c.hint })
	hi("LazyReasonStart", { fg = c.warning })
	hi("LazyReasonRuntime", { fg = c.almost_foreground })
	hi("LazyReasonCmd", { fg = c.info })
	hi("LazyReasonSource", { fg = c.almost_foreground })
	hi("LazyReasonFt", { fg = c.warning })
end

local function mini(hi, c)
	hi("MiniIndentscopeSymbol", { fg = c.almost_foreground })
	hi("MiniStatuslineFilename", { fg = c.foreground, bg = c.statusline })
	hi("MiniStatuslineModeNormal", { fg = c.foreground, bg = c.statusline, bold = true })
	hi("MiniStatuslineModeInsert", { fg = c.foreground, bg = c.cursor, bold = true })
	hi("MiniStatuslineModeVisual", { fg = c.foreground, bg = c.darker_background, bold = true })
	hi("MiniStatuslineModeReplace", { fg = c.foreground, bg = c.error, bold = true })
	hi("MiniStatuslineModeCommand", { fg = c.foreground, bg = c.warning, bold = true })
end

local function ibl(hi, c)
	hi("IblIndent", { fg = c.almost_foreground })
	hi("IblWhitespace", { fg = c.almost_foreground })
	hi("IblScope", { fg = c.foreground })
end

local function copilot(hi, c)
	hi("CopilotSuggestion", { fg = c.almost_foreground })
	hi("CopilotSuggestionSelected", { fg = c.almost_foreground })
end

local function cmp(hi, c)
	-- nvim-cmp
	hi("CmpItemAbbr", { fg = c.foreground })
	hi("CmpItemAbbrDeprecated", { fg = c.almost_foreground, strikethrough = true })
	hi("CmpItemAbbrMatch", { fg = c.foreground, bold = true })
	hi("CmpItemAbbrMatchFuzzy", { fg = c.foreground, bold = true })
	hi("CmpItemKind", { fg = c.foreground })
	hi("CmpItemMenu", { fg = c.almost_foreground })

	-- blink.cmp
	hi("BlinkCmpMenu", { link = "Pmenu" })
	hi("BlinkCmpMenuBorder", { link = "FloatBorder" })
	hi("BlinkCmpMenuSelection", { link = "PmenuSel" })
	hi("BlinkCmpLabel", { fg = c.foreground })
	hi("BlinkCmpLabelDeprecated", { fg = c.almost_foreground, strikethrough = true })
	hi("BlinkCmpLabelMatch", { fg = c.foreground, bold = true })
	hi("BlinkCmpKind", { fg = c.foreground })
	hi("BlinkCmpSource", { fg = c.almost_foreground })
end

local function orgmode(hi, c)
	hi("@org.agenda.scheduled", { fg = c.foreground })
	hi("@org.keyword.done", { fg = c.background, bg = c.info, bold = true })
	hi("@org.keyword.todo", { fg = c.background, bg = c.hint, bold = true })
end

local function markdown(hi, c)
	-- render-markdown.nvim
	hi("RenderMarkdownCode", { bg = c.background })
	hi("RenderMarkdownCodeInline", { fg = c.foreground, bg = c.dim_background })
	hi("RenderMarkdownH1", { fg = c.foreground, bold = true })
	hi("RenderMarkdownH2", { fg = c.foreground, bold = true })
	hi("RenderMarkdownH3", { fg = c.foreground, bold = true })
	hi("RenderMarkdownH4", { fg = c.foreground, bold = true })
	hi("RenderMarkdownH5", { fg = c.foreground, bold = true })
	hi("RenderMarkdownH6", { fg = c.foreground, bold = true })
	hi("RenderMarkdownH1Bg", { bg = c.darker_background })
	hi("RenderMarkdownH2Bg", { bg = c.dim_background })
	hi("RenderMarkdownH3Bg", { bg = c.dim_background })
	hi("RenderMarkdownH4Bg", { bg = c.dim_background })
	hi("RenderMarkdownH5Bg", { bg = c.dim_background })
	hi("RenderMarkdownH6Bg", { bg = c.dim_background })
	hi("RenderMarkdownBullet", { fg = c.foreground, bold = true })
	hi("RenderMarkdownQuote", { fg = c.almost_foreground })
	hi("RenderMarkdownDash", { fg = c.almost_foreground })
	hi("RenderMarkdownTableHead", { fg = c.foreground, bold = true })
	hi("RenderMarkdownTableRow", { fg = c.foreground })
	hi("RenderMarkdownLink", { fg = c.hint, underline = true })
	hi("RenderMarkdownSuccess", { fg = c.info })
	hi("RenderMarkdownError", { fg = c.error })
	hi("RenderMarkdownWarn", { fg = c.warning })
	hi("RenderMarkdownInfo", { fg = c.hint })
	hi("RenderMarkdownHint", { fg = c.hint })

	-- Built-in markdown ftplugin
	hi("markdownH1", { fg = c.foreground, bold = true })
	hi("markdownH2", { fg = c.foreground, bold = true })
	hi("markdownH3", { fg = c.foreground, bold = true })
	hi("markdownH4", { fg = c.foreground, bold = true })
	hi("markdownH5", { fg = c.foreground, bold = true })
	hi("markdownH6", { fg = c.foreground, bold = true })
	hi("markdownCode", { fg = c.foreground, bg = c.dim_background })
	hi("markdownCodeBlock", { fg = c.foreground, bg = c.dim_background })
	hi("markdownLinkText", { fg = c.hint, underline = true })
	hi("markdownUrl", { fg = c.hint, underline = true })
	hi("markdownBold", { fg = c.foreground, bold = true })
	hi("markdownItalic", { fg = c.foreground, italic = true })
end

function M.apply(hi, c, plugins)
	if plugins.git then
		git(hi, c)
	end
	if plugins.telescope then
		telescope(hi, c)
	end
	if plugins.nvim_tree then
		nvim_tree(hi, c)
	end
	if plugins.neo_tree then
		neo_tree(hi, c)
	end
	if plugins.notify then
		notify(hi, c)
	end
	if plugins.which_key then
		which_key(hi, c)
	end
	if plugins.lazy then
		lazy(hi, c)
	end
	if plugins.mini then
		mini(hi, c)
	end
	if plugins.ibl then
		ibl(hi, c)
	end
	if plugins.copilot then
		copilot(hi, c)
	end
	if plugins.cmp then
		cmp(hi, c)
	end
	if plugins.orgmode then
		orgmode(hi, c)
	end
	if plugins.markdown then
		markdown(hi, c)
	end
end

return M
