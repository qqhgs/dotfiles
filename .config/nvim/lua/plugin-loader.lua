local plugin_loader = {}

function plugin_loader.init()
  local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
  if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.fn.system { "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path }
    vim.cmd "packadd packer.nvim"
  end
  local _, packer = pcall(require, "packer")
  packer.init {
    git = {
      clone_timeout = 300,
      subcommands = {
        -- this is more efficient than what Packer is using
        fetch = "fetch --no-tags --no-recurse-submodules --update-shallow --progress",
      },
    },
    max_jobs = 50,
    display = {
      open_fn = function()
        return require("packer.util").float { border = "rounded" }
      end,
    },
  }
end

function plugin_loader.load(configurations)
  local _, packer = pcall(require, "packer")
  packer.startup(function(use)
    for _, plugins in ipairs(configurations) do
      for _, plugin in ipairs(plugins) do
        use(plugin)
      end
    end
  end)

  -- Colorscheme must get called after plugins are loaded or it will break new installs.
  vim.g.colors_name = xvim.colorscheme
  vim.cmd("colorscheme " .. xvim.colorscheme)
end

return plugin_loader
