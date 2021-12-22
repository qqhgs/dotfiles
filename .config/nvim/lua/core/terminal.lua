local M = {}

M.config = function()
  xvim.builtin["terminal"] = {
    open_mapping = [[<C-t>]],
    direction = "float",
  }
end

M.setup = function()
  local terminal = require "toggleterm"
  terminal.setup(xvim.builtin.terminal)
end

return M
