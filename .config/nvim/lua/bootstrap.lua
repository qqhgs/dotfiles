local M = {}

function M:init()
  require("config"):init()
  require("plugin-loader").init()
end

return M
