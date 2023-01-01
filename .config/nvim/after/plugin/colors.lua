vim.o.termguicolors = true

function ColorMyPencils(color)
    color = color or "tokyonight"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

vim.g.tokyonight_style = 'night'
vim.g.tokyonight_transparent_background = 1
vim.g.tokyonight_menu_selection_background = blue

ColorMyPencils()
