return {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    ---@type CatppuccinOptions
    opts = {
        styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
            comments = { "italic" }, -- Change the style of comments
            conditionals = { "italic" },
            loops = {},
            functions = { "italic" },
            keywords = { "italic" },
            strings = {},
            variables = {},
            numbers = {},
            booleans = { "italic" },
            properties = {},
            types = {"italic"},
            operators = {"italic"},
            -- miscs = {}, -- Uncomment to turn off hard-coded styles
        },
        integrations = {
            aerial = true,
            alpha = true,
            cmp = true,
            dap = true,
            dap_ui = true,
            gitsigns = true,
            illuminate = true,
            indent_blankline = true,
            markdown = true,
            mason = true,
            native_lsp = { enabled = true },
            neotree = true,
            notify = true,
            semantic_tokens = true,
            symbols_outline = true,
            telescope = true,
            treesitter = true,
            ts_rainbow = false,
            ufo = true,
            which_key = true,
            window_picker = true,
            colorful_winsep = { enabled = true, color = "lavender" },
        },
    },
    specs = {
        {
            "akinsho/bufferline.nvim",
            optional = true,
            opts = function(_, opts)
                return require("astrocore").extend_tbl(opts, {
                    highlights = require("catppuccin.groups.integrations.bufferline").get(),
                })
            end,
        },
        {
            "nvim-telescope/telescope.nvim",
            optional = true,
            opts = {
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
            },
        },
    },
}
