-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
    "AstroNvim/astrocommunity",
    { import = "astrocommunity.pack.lua" },
    -- import/override with your plugins folder

    -- bars-and-lines
    -- { import = "astrocommunity.bars-and-lines.bufferline-nvim" }, -- A snazzy bufferline for Neovim (Note: This also disables the Heirline based tabline).
    { import = "astrocommunity.bars-and-lines.dropbar-nvim" }, -- IDE-like breadcrumbs, out of the box (Note: This also disables the Heirline based winbar).
    { import = "astrocommunity.bars-and-lines.wakastat" },     -- Wakatime coding status on your neovim.

    -- code-runner
    { import = "astrocommunity.code-runner.sniprun" }, -- A neovim plugin to run lines/blocs of code (independently of the rest of the file).

    -- color

    -- colorscheme
    { import = "astrocommunity.colorscheme.catppuccin" }, -- Soothing pastel theme for (Neo)vim.

    -- debugging
    { import = "astrocommunity.debugging.nvim-dap-repl-highlights" },    -- Add syntax highlighting to the nvim-dap REPL buffer using treesitter.
    { import = "astrocommunity.debugging.nvim-dap-virtual-text" },       -- This plugin adds virtual text support to nvim-dap. nvim-treesitter is used to find variable definitions.
    { import = "astrocommunity.debugging.persistent-breakpoints-nvim" }, -- Neovim plugin for persistent breakpoints.

    -- diagnostics
    { import = "astrocommunity.diagnostics.tiny-inline-diagnostic-nvim" }, -- A Neovim plugin that display prettier diagnostic messages. Display one line diagnostic messages where the cursor is, with icons and colors.
    { import = "astrocommunity.diagnostics.trouble-nvim" },                -- A pretty diagnostics, references, telescope results, quickfix and location list to help you solve all the trouble your code is causing.

    -- editing-support
    { import = "astrocommunity.editing-support.multiple-cursors-nvim" },   -- A multi-cursor plugin for Neovim that works in normal, insert/replace, or visual modes, and with almost every command.
    { import = "astrocommunity.editing-support.neogen" },                  -- A better annotation generator. Supports multiple languages and annotation conventions.
    { import = "astrocommunity.editing-support.nvim-treesitter-context" }, -- Show code context.
    { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" }, -- Rainbow delimiters for Neovim with Tree-sitter.

    -- markdown-and-latex
    { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" }, -- Preview markdown on your modern browser with synchronised scrolling and flexible configuration.
    { import = "astrocommunity.markdown-and-latex.markmap-nvim" },          -- Visualize your Markdown as mindmaps with markmap.
    { import = "astrocommunity.markdown-and-latex.render-markdown-nvim" },  -- Plugin to improve viewing Markdown files in Neovim.

    -- media
    { import = "astrocommunity.media.vim-wakatime" }, -- Vim plugin for automatic time tracking and metrics generated from your programming activity.

    -- note-taking
    -- { import = "astrocommunity.note-taking.obsidian-nvim" }, -- A Neovim plugin for writing and navigating an Obsidian vault, written in Lua.
    { import = "astrocommunity.note-taking.zk-nvim" }, -- Neovim extension for the zk plain text note-taking assistant.

    -- pack
    { import = "astrocommunity.pack.bash" },                -- Bash Language Pack.
    { import = "astrocommunity.pack.lua" },                 -- Lua Language Pack.
    { import = "astrocommunity.pack.markdown" },            -- Markdown Language Pack.
    { import = "astrocommunity.pack.python.base" },         -- Python Base Pack.
    { import = "astrocommunity.pack.python.basedpyright" }, -- Basedpyright.
    { import = "astrocommunity.pack.python.ruff" },         -- Ruff.
    { import = "astrocommunity.pack.toml" },                -- TOML Language Pack.
    { import = "astrocommunity.pack.yaml" },                -- YAML Language Pack.

    -- split-and-window
    { import = "astrocommunity.split-and-window.colorful-winsep-nvim" }, -- Make your nvim window separators colorful with smooth animations.
}
