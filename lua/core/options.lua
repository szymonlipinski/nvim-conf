local opts = {
  shiftwidth = 2,
  tabstop = 2,
  expandtab = true,
  wrap = false,
  number = true,
  termguicolors = true,
}

for opt, val in pairs(opts) do
  vim.o[opt] = val
end

local colorscheme = require("helpers.colorscheme")
vim.cmd.colorscheme(colorscheme)

