return {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
        "SmiteshP/nvim-navic",
        "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    event = "UIEnter",
    opts = {
        -- configurations go here
    },
    specs = {
        {
            "rebelot/heirline.nvim",
            optional = true,
            opts = function(_, opts) opts.winbar = nil end,
        },
        {
            "catppuccin",
            optional = true,
            ---@type CatppuccinOptions
            opts = { integrations = { dropbar = { enabled = true } } },
        },
    },
}
