----------
-- LTeX+ --
----------
return {
  "barreiroleo/ltex_extra.nvim",
  ft = {
    "bib",
    "gitcommit",
    "mail",
    "markdown",
    "mdx",
    "org",
    "norg",
    "plaintex",
    "rst",
    "rnoweb",
    "latex",
    "tex",
    "text",
    "pandoc",
  },
  dependencies = "neovim/nvim-lspconfig",
  opts = {
    -- ltex_extra options
    {
      load_langs = { "en-US", "ru-RU" },
      init_check = true, -- Проверить файл при открытии
    },
    -- ltex-ls options
    server_opts = {
      settings = {
        ltex = {
          language = "ru-RU", -- Язык по умолчанию
          diagnosticSeverity = "hint",
          sentenceCacheSize = 2000,
          additionalRules = {
            enablePickyRules = true,
            motherTongue = "ru-RU",
          },
          dictionary = {
            ["en-US"] = { "example", "word" }, -- добавьте свои слова
            ["ru-RU"] = { "пример", "слово" }, -- добавьте свои слова
          },
          disabledRules = {
            ["en-US"] = { "WHITESPACE_RULE" }, -- отключить правила для английского
            ["ru-RU"] = { "ТЕКСТОВОЕ_ПРАВИЛО" }, -- отключить правила для русского
          },
        },
      },
    },
  },
}
