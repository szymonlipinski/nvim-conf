
local function find_colorscheme(name, opts)
  local status_ok, colorscheme = pcall(require, name)
  if status_ok then
    colorscheme.setup(opts)
    return name
  end

  local status_ok, _ = pcall(vim.cmd.colorscheme, name)
  if status_ok then
    return name
  end

  return "default"
end

-- let g:lightline = {'colorscheme': 'catppuccin_mocha'}
-- let g:airline_theme = 'catppuccin_mocha'

local colorscheme = find_colorscheme("catppuccin_mocha")

return colorscheme

