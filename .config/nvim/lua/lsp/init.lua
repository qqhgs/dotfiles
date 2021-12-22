local M = {}

function M.init()
  local status_ok, _ = pcall(require, "lspconfig")
  if not status_ok then
    return
  end

  local configs = {
    "lsp.installer",
    "lsp.handlers",
    "lsp.null-ls",
  }

  for _, config in ipairs(configs) do
    local cfg = require(config)
    cfg.setup()
  end

end

return M
