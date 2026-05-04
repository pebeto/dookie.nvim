# dookie.nvim
A color scheme inspired by Plan9's acme editor, but with a personal touch.

![screenshot](screenshot.png)

# Requirements
- Neovim 0.10 or higher (for `@lsp.*` semantic tokens and modern Treesitter captures)

# Installation
This is the installation using [lazy.nvim](https://github.com/folke/lazy.nvim), but you can use any plugin manager you like.
```lua
{
    "pebeto/dookie.nvim",
    config = function()
        vim.cmd.colorscheme("dookie")
    end,
}
```

# Configuration (optional)
Call `setup()` before `:colorscheme dookie` to override palette entries, opt out of plugin highlights, or disable `:terminal` colors.

```lua
{
    "pebeto/dookie.nvim",
    config = function()
        require("dookie").setup({
            -- Override individual palette entries; rest fall back to defaults.
            palette = {
                -- background = "#fffff0",
            },
            -- Set any of these to false to skip emitting their highlights.
            plugins = {
                git = true,
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
                markdown = true,
            },
            -- Set g:terminal_color_0..15 so :terminal blends with the scheme.
            terminal_colors = true,
        })
        vim.cmd.colorscheme("dookie")
    end,
}
```

# Contributing
If you find something missing or have a suggestion, feel free to open an issue or a pull request.
