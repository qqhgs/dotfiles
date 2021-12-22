local M = {}
local components = require "core.statusline.components"

local styles = {
  default = nil,
  none = nil,
}

styles.none = {
  style = "none",
  options = {
    icons_enabled = true,
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = {},
  },
  sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = {},
}

styles.default = {
  style = "default",
  options = {
    icons_enabled = true,
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = {},
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch" },
    lualine_c = { "filename" },
    lualine_x = { "encoding", "fileformat", "filetype" },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = {},
}

styles.xvim = {
  style = "xvim",
  options = {
    icons_enabled = true,
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = { "dashboard", "NvimTree", "Outline" },
  },
  sections = {
    lualine_a = {
      components.mode,
    },
    lualine_b = {
      components.branch,
      components.filename,
      components.filesize,
    },
    lualine_c = {
      components.diff,
    },
    lualine_x = {
      components.diagnostics,
      components.treesitter,
      components.lsp,
      -- components.location,
      -- components.encoding,
      components.filetype,
    },
    lualine_y = {
    },
    lualine_z = {
      -- components.scrollbar,
    },
  },
  inactive_sections = {
    lualine_a = { "filename" },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = { "nvim-tree" },
}


function M.get_style(style)
  local style_keys = vim.tbl_keys(styles)
  if not vim.tbl_contains(style_keys, style) then
    style = "default"
  end

  return vim.deepcopy(styles[style])
end

function M.update()
  local style = M.get_style(xvim.builtin.statusline.style)
  if xvim.builtin.statusline.options.theme == nil then
    xvim.builtin.statusline.options.theme = "auto"
  end

  xvim.builtin.statusline = vim.tbl_deep_extend("keep", xvim.builtin.statusline, style)
end

return M

