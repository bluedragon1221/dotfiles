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
    use 'arcticicestudio/nord-vim'

    use { 'nvim-lualine/lualine.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    } --}}}

    use({ "nvim-treesitter/nvim-treesitter",
        config = function()
            require("treesitter").setup({
                auto_install = true,
                highlight = {
                    enable = true,
                }
            })
        end,
        requires = "nvim-treesitter/playground"
    })
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

    use 'nvim-treesitter/playground'

    use 'tpope/vim-obsession'
end)
