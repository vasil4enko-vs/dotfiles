-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
    "AstroNvim/astrocommunity",
    -- import/override with your plugins folder

    -- Bars and Lines
    -- { import = "astrocommunity.bars-and-lines.bufferline-nvim" }, -- A snazzy bufferline for Neovim (Note: This also disables the Heirline based tabline)
    { import = "astrocommunity.bars-and-lines.dropbar-nvim" },   -- IDE-like breadcrumbs, out of the box (Note: This also disables the Heirline based winbar)
    { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" }, -- A Neovim plugin hiding your colorcolumn when unneeded

    -- Code Ranners
    { import = "astrocommunity.code-runner.compiler-nvim" }, -- Compiler for building and running code
    { import = "astrocommunity.code-runner.sniprun" },     -- Plugin to run lines/blocs of code

    -- Colorscheme
    { import = "astrocommunity.colorscheme.catppuccin" }, -- Catppuccin

    -- Debugging
    { import = "astrocommunity.debugging.nvim-dap-repl-highlights" },  -- Add syntax highlighting to the nvim-dap REPL
    { import = "astrocommunity.debugging.nvim-dap-virtual-text" },     -- This plugin adds virtual text support to nvim-dap
    { import = "astrocommunity.debugging.persistent-breakpoints-nvim" }, -- Neovim plugin for persistent breakpoints
    { import = "astrocommunity.debugging.telescope-dap-nvim" },        -- Integration for nvim-dap with telescope.nvim

    -- Diagnostics
    { import = "astrocommunity.diagnostics.lsp_lines-nvim" },            -- lsp_lines is a simple neovim plugin that renders diagnostics using virtual lines on top of the real line of code
    { import = "astrocommunity.diagnostics.tiny-inline-diagnostic-nvim" }, -- A Neovim plugin that display prettier diagnostic messages
    { import = "astrocommunity.diagnostics.trouble-nvim" },              -- A pretty diagnostics, references, telescope results, quickfix and location list

    -- Editing support
    { import = "astrocommunity.editing-support.multiple-cursors-nvim" }, -- Multi-cursor plugin
    { import = "astrocommunity.editing-support.neogen" },                -- Annotation Toolkit
    { import = "astrocommunity.editing-support.nvim-treesitter-context" }, -- Show code context
    { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" }, -- Rainbow delimiters for Neovim with Tree-sitter
    { import = "astrocommunity.editing-support.telescope-undo-nvim" },   -- View and search your undo tree

    -- Markdown and latex
    { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" }, -- Preview Markdown on browser
    { import = "astrocommunity.markdown-and-latex.peek-nvim" },           -- Markdown preview plugin for Neovim
    { import = "astrocommunity.markdown-and-latex.render-markdown-nvim" }, -- Plugin to improve viewing Markdown files in Neovim

    -- Media
    { import = "astrocommunity.media.vim-wakatime" }, -- Vim plugin for automatic time tracking and metrics generated from your programming activity

    -- note-taking
    { import = "astrocommunity.note-taking.obsidian-nvim" }, -- A Neovim plugin for writing and navigating an Obsidian vault, written in Lua

    { import = "astrocommunity.pack.bash" },               -- Bash
    { import = "astrocommunity.pack.lua" },                -- Lua
    { import = "astrocommunity.pack.markdown" },           -- Markdown
    { import = "astrocommunity.pack.python-ruff" },        -- Python
    { import = "astrocommunity.pack.toml" },               -- TOML
    { import = "astrocommunity.pack.yaml" },               -- YAML

    --Recipe
    { import = "astrocommunity.recipes.cache-colorscheme" }, -- Cache Colorscheme
}
