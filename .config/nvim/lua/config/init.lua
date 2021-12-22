local M = {}

-- Initialize xvim default configuration
-- Define xvim global variable
function M:init()
  if vim.tbl_isempty(xvim or {}) then
    xvim = vim.deepcopy(require "config.defaults")
  end
  require("keymappings").load_defaults()

  local builtins = require "core.builtins"
  builtins.config()

  local settings = require "config.settings"
  settings.load_options()
end

--- Override the configuration with a user provided one
-- @param config_path The path to the configuration overrides
function M:load()

  vim.g.mapleader = (xvim.leader == "space" and " ") or xvim.leader

  require("keymappings").load(xvim.keys)

  local settings = require "config.settings"
  settings.load_commands()
end

return M
