local M = {}

M.config = function()
  xvim.builtin.bufferline = {
    keymap = {
      normal_mode = {},
    },
  }
end

M.setup = function()
  require("keymappings").load(xvim.builtin.bufferline.keymap)
end

return M
