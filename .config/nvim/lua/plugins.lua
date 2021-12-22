local commit = {
  comment = "eb0a84a2ea42858a2bb3cdf5fabe54e7c700555d",
  toggleterm = "265bbff68fbb8b2a5fb011272ec469850254ec9f",
}

return {
  -- Packer can manage itself as an optional plugin
  { "wbthomason/packer.nvim" },

  { "neovim/nvim-lspconfig" },
  { "tamago324/nlsp-settings.nvim" },
  { "williamboman/nvim-lsp-installer" },
  { "jose-elias-alvarez/null-ls.nvim" },
  { "nvim-lua/plenary.nvim" },
  { "nvim-lua/popup.nvim" },
  { "antoinemadec/FixCursorHold.nvim" },
  { "lewis6991/impatient.nvim" },

  -- LSP

  -- NvimTree
  {
    "kyazdani42/nvim-tree.lua",
    -- event = "BufWinOpen",
    -- cmd = "NvimTreeToggle",
    config = function()
      require("core.nvimtree").setup()
    end,
    disable = not xvim.builtin.nvimtree.active,
  },

  -- project.nvim
  {
    "ahmedkhalf/project.nvim",
    config = function()
      require("core.project").setup()
    end,
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    branch = vim.fn.has "nvim-0.6" == 1 and "master" or "0.5-compat",
    -- run = ":TSUpdate",
    config = function()
      require("core.treesitter").setup()
    end,
  },
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    event = "BufReadPost",
  },

  -- Icons
  { "kyazdani42/nvim-web-devicons" },

  -- Whichkey
  {
    "folke/which-key.nvim",
    config = function()
      require("core.which-key").setup()
    end,
    event = "BufWinEnter",
  },

  -- Bufferline
  {
    "romgrk/barbar.nvim",
    config = function()
      require("core.bufferline").setup()
    end,
    event = "bufwinenter",
  },

  -- Statusline
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("core.statusline").setup()
    end,
  },

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require("core.telescope").setup()
    end,
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    run = "make",
  },

  -- Comments
  {
    "numToStr/Comment.nvim",
    commit = commit.comment,
    event = "BufRead",
    config = function()
      require("Comment").setup()
    end,
  },

  -- Install nvim-cmp, and buffer source as a dependency
  {
    "hrsh7th/nvim-cmp",
    config = function()
      if xvim.builtin.cmp then
        require("core.cmp").setup()
      end
    end,
    requires = {
      "L3MON4D3/LuaSnip",
      "rafamadriz/friendly-snippets",
    },
  },
  {
    "rafamadriz/friendly-snippets",
  },
  {
    "L3MON4D3/LuaSnip",
    config = function()
      require("luasnip/loaders/from_vscode").lazy_load()
    end,
  },
  { "hrsh7th/cmp-nvim-lsp", },
  { "saadparwaiz1/cmp_luasnip", },
  { "hrsh7th/cmp-buffer", },
  { "hrsh7th/cmp-path", },
  { "hrsh7th/cmp-nvim-lua", },


  -- Autopairs
  {
    "windwp/nvim-autopairs",
    -- commit = commit.nvim_autopairs,
    -- event = "InsertEnter",
    config = function()
      require("core.autopairs").setup()
    end,
  },

  {
    "lewis6991/gitsigns.nvim",
    -- commit = commit.gitsigns,
    config = function()
      require("core.gitsigns").setup()
    end,
    event = "BufRead",
  },

  -- Terminal
  {
    "akinsho/toggleterm.nvim",
    commit = commit.toggleterm,
    event = "BufWinEnter",
    config = function()
      require("core.terminal").setup()
    end,
  },

  -- Colorscheme
  {
    "folke/tokyonight.nvim",
  },

  -- Indent
  { "lukas-reineke/indent-blankline.nvim" },

  -- Others
  { "windwp/nvim-ts-autotag" },
}
