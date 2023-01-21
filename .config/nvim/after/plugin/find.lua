-- :find file settings
vim.opt.path:append("**")
vim.cmd("set wildmenu")

vim.keymap.set("n", "<C-o>", ":!ls<CR>:find ")

-- jump to buffer
vim.keymap.set("n", "<C-b>", ":buffers<CR>:b ")

-- better netrw
vim.g.netrw_banner = 0
vim.g.netrw_browse_split = 4
vim.g.netrw_altv = 1
vim.g.netrw_liststyle = 0
vim.g.netrw_winsize = 10

vim.api.nvim_create_autocmd("VimEnter", {
  command = ":Vexplore",
})
