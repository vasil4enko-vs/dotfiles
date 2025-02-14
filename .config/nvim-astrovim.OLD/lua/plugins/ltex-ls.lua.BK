return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "folke/neoconf.nvim",
  },
  opts = function(_, opts)
    local lspconfig = require("lspconfig")
    lspconfig.ltex.setup({
      cmd = { "ltex-ls" },
      filetypes = { "markdown", "text", "latex" },
      settings = {
        ltex = {
          language = "ru", -- Основной язык — русский
          additionalLanguages = { "en", "uk" }, -- Дополнительные языки: английский и украинский
          dictionary = {
            ["ru"] = { "Stepik" },
            ["en"] = { "Stepik" },
            ["uk"] = { "Stepik" },
          },
          workspaceFolderDictionary = {
            ["ru"] = { "Stepik" },
            ["en"] = { "Stepik" },
            ["uk"] = { "Stepik" },
          },
          disabledRules = {
            -- ["ru"] = { "PROFANITY" },
            -- ["en"] = { "WHITESPACE_RULE" },
            -- ["uk"] = { "TYPOGRAPHY" },
          },
          hiddenFalsePositives = {
            ["ru"] = { "Stepik" },
            ["en"] = { "Stepik" },
            ["uk"] = { "Stepik" },
          },
        },
      },
    })
  end,
}
