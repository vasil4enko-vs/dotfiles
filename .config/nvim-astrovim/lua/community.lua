-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
    "AstroNvim/astrocommunity",
    -- Support for programming languages
    { import = "astrocommunity.pack.bash" },
    { import = "astrocommunity.pack.lua" },
    { import = "astrocommunity.pack.python-ruff" },
    { import = "astrocommunity.pack.toml" },
    { import = "astrocommunity.pack.yaml" },
    { import = "astrocommunity.pack.markdown" },
    -- Editing support
    { import = "astrocommunity.editing-support.neogen" },
    -- Colorscheme/Theme
    { import = "astrocommunity.recipes.cache-colorscheme" },
    { import = "astrocommunity.colorscheme.night-owl-nvim" },
    { import = "astrocommunity.colorscheme.catppuccin" },
    -- Bars and lines
    { import = "astrocommunity.bars-and-lines.bufferline-nvim" },
    -- { import = "astrocommunity.bars-and-lines.dropbar-nvim" },

    -- import/override with your plugins folder
}
