local M = {}

local builtins = {
  "core.which-key",
  "core.gitsigns",
  "core.cmp",
  -- "core.dashboard",
  -- "core.dap",
  "core.terminal",
  "core.telescope",
  "core.treesitter",
  "core.nvimtree",
  "core.project",
  "core.bufferline",
  "core.autopairs",
  "core.comment",
  -- "core.notify",
  "core.statusline",
}

function M.config()
  for _, builtin_path in ipairs(builtins) do
    local builtin = require(builtin_path)
    builtin.config()
  end
end

return M
