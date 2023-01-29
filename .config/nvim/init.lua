local cmd = vim.cmd
local fn = vim.fn
local api = vim.api

local packer_bootstrap = false -- Indicate first time installation

-- packer.nvim configuration
local conf = {
  profile = {
    enable = true,
    threshold = 0, -- the amount in ms that a plugins load time must be over for it to be included in the profile
  },

  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
}

local function packer_init()
  -- Check if packer.nvim is installed
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({
      "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path,
    })
    cmd([[packadd packer.nvim]])
  end

  -- Run PackerCompile if there are changes in this file
  local packerGrp = api.nvim_create_augroup("packer_user_config", { clear = true })
  api.nvim_create_autocmd(
    { "BufWritePost" },
    { pattern = "init.lua", command = "source <afile> | PackerCompile", group = packerGrp }
  )
end

-- Plugins
local function plugins(use)
  use { 'Mofiqul/vscode.nvim',
    config = vim.cmd.colorscheme("vscode")
  }
  use { 'nvim-lualine/lualine.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('config.lualine')
    end,
  }
  use { 'romgrk/barbar.nvim',
    requires = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('config.barbar')
    end,
  }

  use { 'ms-jpq/chadtree' }
  use { 'simrat39/symbols-outline.nvim',
    config = function()
      require("symbols-outline").setup({
        position = 'left',
        show_symbol_details = false
      })
    end,
  }
  use 'nvim-treesitter/nvim-treesitter'
  use 'NvChad/nvim-colorizer.lua'
  use { "wbthomason/packer.nvim" }
  use { "kyazdani42/nvim-web-devicons" }
  use { "nvim-lua/plenary.nvim" }
  use { "neovim/nvim-lspconfig",
    event = "BufReadPre",
    requires = { "williamboman/nvim-lsp-installer", "echasnovski/mini.completion" },
    config = function()
      require("config.lsp")
      require('mini.completion').setup()
    end,
  }
  use 'numirias/semshi'
  -- Bootstrap Neovim
  if packer_bootstrap then
    print("Neovim restart is required after installation!")
    require("packer").sync()
  end
end

-- packer.nvim
packer_init()
local packer = require("packer")
packer.init(conf)
packer.startup(plugins)
