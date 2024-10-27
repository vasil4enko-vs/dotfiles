local M = {}

local night_owl = require("night-owl")

-- 👇 Add your own personal settings here
--@param options Config|nil
night_owl.setup({
    -- These are the default settings
    bold = true,
    italics = true,
    underline = true,
    undercurl = true,
    transparent_background = true,
})

-- This heirline.nvim config should be somewhere in your config files
require("heirline").setup({
    options = {
        -- ... other configs
        theme = "night-owl",
        -- ... other configs
    },
})

return M
