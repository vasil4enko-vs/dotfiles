return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "sindrets/diffview.nvim",        -- optional - Diff integration

    -- Only one of these is needed.
    "nvim-telescope/telescope.nvim", -- optional
    -- obs"ibhagwan/fzf-lua",              -- optional
    -- obs"echasnovski/mini.pick",         -- optional
  },
  config = true
}