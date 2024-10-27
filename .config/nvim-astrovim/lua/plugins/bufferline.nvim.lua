local M = {}

vim.opt.termguicolors = true
local bufferline = require("bufferline")
bufferline.setup({
    --    highlights = require("catppuccin.groups.integrations.bufferline").get(),
    options = {
        style_preset = {
            bufferline.style_preset.no_bold,
        },
    },
})

return M
