local opts = {
  selected_interpreters = { "Python3_fifo" },
  repl_enable = { "Python3_fifo" },
  display = {
    -- "Classic", --# display results in the command-line  area
    -- "VirtualTextOk", --# display ok results as virtual text (multiline is shortened)

    -- "VirtualText",             --# display results as virtual text
    -- "VirtualLine",             --# display results as virtual lines
    -- "TempFloatingWindow", --# display results in a floating window
    -- "LongTempFloatingWindow", --# same as above, but only long results. To use with VirtualText[Ok/Err]
    "Terminal", --# display results in a vertical split
    -- "TerminalWithCode", --# display results and code history in a vertical split
    -- "NvimNotify",              --# display with the nvim-notify plugin
    -- "Api"                      --# return output to a programming interface
  },
}

return {
  "michaelb/sniprun",
  config = function() require("sniprun").setup(opts) end,
}
