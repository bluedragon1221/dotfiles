-- vim:foldmethod=marker

-- Make sure packer is installed
function ensure_packer()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

ensure_packer()

return require('packer').startup(function(use)
    -- Let packer update itself
    use 'wbthomason/packer.nvim'

    -- Eye Candy {{{
        --- Colorscheme
        use { 'ghifarit53/tokyonight-vim',
            requires = 'sheerun/vim-polyglot',
            as = 'tokyonight'
        }

    --- Replacement Line
    use { 'nvim-lualine/lualine.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    } --}}}

-- LSP Packages {{{
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use { 'VonHeikemen/lsp-zero.nvim',
    requires = {
        --- LSP Support
        {'neovim/nvim-lspconfig'},
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},

        --- Autocompletion
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-path'},
        {'saadparwaiz1/cmp_luasnip'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/cmp-nvim-lua'},

        --- Snippets
        {'L3MON4D3/LuaSnip'},
        {'rafamadriz/friendly-snippets'},
    }
} --}}}

-- Text Manupulation {{{
    use "tpope/vim-surround"
    use "tpope/vim-commentary"
    use "raimondi/delimitmate"
    use "mattn/emmet-vim"
    --}}}

    -- Writing {{{
        use 'preservim/vim-pencil'
        use 'junegunn/limelight.vim' 
        use 'junegunn/goyo.vim' 
        use 'reedes/vim-wordy' 

        use 'vimwiki/vimwiki'
        --}}}

    use { 'junegunn/fzf.vim',
        requires = 'junegunn/fzf'
    }
   
    use 'nvim-treesitter/playground'

    use 'tpope/vim-obsession'
end)
