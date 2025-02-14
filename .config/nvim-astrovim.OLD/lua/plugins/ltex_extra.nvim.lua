return {
    "barreiroleo/ltex_extra.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
        require("ltex_extra").setup({
            load_langs = { "en-US", "ru-RU", "uk-UA" }, -- Языки для проверки
            init_check = true, -- Проверять файл при его открытии
        })
    end,
}
