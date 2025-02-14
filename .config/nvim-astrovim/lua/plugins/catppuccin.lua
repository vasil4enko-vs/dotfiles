local M = {}

require("catppuccin").setup {
  flavour = "auto", -- latte, frappe, macchiato, mocha
  background = { -- :h background
    light = "latte",
    dark = "mocha",
  },
  transparent_background = true, -- disables setting the background color.
  show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
  term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
  dim_inactive = {
    enabled = false, -- dims the background color of inactive window
    shade = "dark",
    percentage = 0.15, -- percentage of the shade to apply to the inactive window
  },
  no_italic = false, -- Force no italic
  no_bold = false, -- Force no bold
  no_underline = false, -- Force no underline
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
    types = { "italic" },
    operators = { "italic" },
    -- miscs = {}, -- Uncomment to turn off hard-coded styles
  },
  color_overrides = {},
  custom_highlights = {},
  default_integrations = true,
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
    mini = {
      enabled = true,
      indentscope_color = "", -- catppuccin color (eg. `lavender`) Default: text
    },
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
    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
  },
}

-- setup must be called before loading
-- vim.cmd.colorscheme "catppuccin"

return M
