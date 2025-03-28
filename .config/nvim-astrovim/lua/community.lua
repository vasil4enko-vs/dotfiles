-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- import/override with your plugins folder
  -- Language Pack
  { import = "astrocommunity.pack.lua" }, -- Lua
  { import = "astrocommunity.pack.bash" }, -- Bash
  { import = "astrocommunity.pack.python-ruff" }, -- Python
  { import = "astrocommunity.pack.toml" }, -- TOML
  { import = "astrocommunity.pack.yaml" }, -- YAML
  { import = "astrocommunity.pack.markdown" }, -- Markdown
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" }, -- Preview Markdown on browser
  { import = "astrocommunity.markdown-and-latex.peek-nvim" }, -- Markdown preview plugin for Neovim
  { import = "astrocommunity.markdown-and-latex.render-markdown-nvim" }, -- Plugin to improve viewing Markdown files in Neovim
  { import = "astrocommunity.editing-support.telescope-undo-nvim" }, -- View and search your undo tree
  -- Editing support
  { import = "astrocommunity.editing-support.neogen" }, -- Annotation Toolkit
  { import = "astrocommunity.editing-support.multiple-cursors-nvim" }, -- Multi-cursor plugin
  { import = "astrocommunity.editing-support.nvim-treesitter-context" }, -- Show code context
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" }, -- Rainbow delimiters for Neovim with Tree-sitter

  -- Diagnostics
  { import = "astrocommunity.diagnostics.trouble-nvim" },

  -- Code Ranners
  { import = "astrocommunity.code-runner.compiler-nvim" }, -- Compiler for building and running code

  -- Media
  { import = "astrocommunity.media.vim-wakatime" },

  ---- UI
  -- Bars & Lines
  -- { import = "astrocommunity.bars-and-lines.bufferline-nvim" }, -- A snazzy bufferline for Neovim (Note: This also disables the Heirline based tabline)
  { import = "astrocommunity.bars-and-lines.dropbar-nvim" }, -- IDE-like breadcrumbs, out of the box (Note: This also disables the Heirline based winbar)
  -- Colorscheme/Theme
  { import = "astrocommunity.recipes.cache-colorscheme" }, -- Cache Colorscheme
  { import = "astrocommunity.colorscheme.catppuccin" }, -- Catppuccin

}
