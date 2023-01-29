-- # Open file
-- ## Search down into subfolders
-- Provides completion for all file-reloated tasks
vim.opt.path:append("**")

-- Display all matching files when we tab complete
vim.cmd.set("wildmenu")

vim.keymap.set("n", "<C-o>", ":!ls<CR>:find ", { silent = true, noremap = true })

-- Quick Switch Buffer
vim.keymap.set("n", "<C-b>", ":buffers<CR>:b ")

-- # Netrw
-- Make Netrw behave more like NERDTree
-- ## Removing the Banner
vim.g.netrw_banner = 0

-- ## Changing how files are opened
-- 1. open files in a new horizontal split
-- 2. open files in a new vertical split
-- 3. open files in a new tab
-- 4. open in previous window
vim.g.netrw_browse_split = 2

-- ## Set width of the directory explorer
vim.g.netrw_winsize = 25
