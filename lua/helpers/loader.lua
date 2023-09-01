local M = {}

function M.load(name)
  ok, package = pcall(require, name)
  if not ok then
    vim.notify("There is a problem with loading: "..name)
  end
  return package
end

return M
