local opts = {
  softener = {
    asciidoc = true,
    gitcommit = true,
    latex = true,
    mail = true,
    markdown = true,
    org = true,
    norg = true,
    rst = true,
    tex = true,
    text = true,
  },
}

return {
  "andrewferrier/wrapping.nvim",
  config = function() require("wrapping").setup(opts) end,
}
