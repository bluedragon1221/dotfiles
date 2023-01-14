function author()
    vim.cmd(":Goyo")
    vim.cmd(":Limelight")
    vim.cmd(":SoftPencil")
    require('lualine').hide()
end

vim.g.limelight_conceal_ctermfg = "gray"
vim.g.limelight_conceal_ctermfg = 240
vim.g.limelight_default_coefficient = 0.9

vim.keymap.set("n", "<leader>wo", function() author() end)
