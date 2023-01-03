-- vim:foldmethod=marker

return require('packer').startup(function(use)
    -- Let packer update itself
    use 'wbthomason/packer.nvim'

    -- Eye Candy {{{
    --- Colorscheme
    use { 'ghifarit53/tokyonight-vim',
        as = 'tokyonight'
    }

    --- Replacement Line
    use { 'nvim-lualine/lualine.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    --}}}

    -- LSP Packages {{{
        use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
        use { 'VonHeikemen/lsp-zero.nvim',
        requires = {
            ---- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            ---- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            ---- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }
    --}}}

    use { 'junegunn/fzf.vim',
        requires = 'junegunn/fzf'
    }
    use { 'ggandor/leap.nvim',
        requires = 'tpope/vim-repeat'
    }
    use('mattn/emmet-vim')
end)
