local notify = require("helpers.loader").load("notify") 

if not notify then
  return
end
vim.notify = notify

