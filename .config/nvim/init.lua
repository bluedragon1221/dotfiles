local install_path = '~/.local/share/nvim/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  packer_bootstrap = vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

require('packer').init({
  opt = true
})

return require('packer').startup(function(use)
  -- make sure to add this line to let packer manage itself
  use 'wbthomason/packer.nvim'

  use { 'arcticicestudio/nord-vim',
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
    requires = { "williamboman/nvim-lsp-installer" },
    config = function()
      require("config.lsp")
    end,
  }

  use { "echasnovski/mini.completion",
    config = function()
      require('mini.completion')
    end,
  }

end)

vim.cmd.colorscheme("nord")
