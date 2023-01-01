-- vim:foldmethod=marker

local function map(mode, key, command)
    vim.keymap.set(mode, key, command, {silent = true})
end

vim.g.mapleader = " "

-- Basic Commands {{{
--> Commands that get me flying through nvim 

--- Exit Editor, Stay in Nvim
map("n", "<C-w>", vim.cmd.Ex)

--- Exit
map("n", "<C-q>", vim.cmd.q)

--- Save
map("n", "<C-s>", vim.cmd.w)
map("i", "<C-s>", vim.cmd.w)

-- Source
map("n", "<C-o>", vim.cmd.so)
map("n", "<C-o>", vim.cmd.so)

map("n", "<C-x>", ":vnew term://zsh<CR>i")
-- }}}

-- Toggles {{{
--> Toggle things

--- Toggle Line Numbers
map("n", "<C-r>", ":set nu! rnu!<CR>")

--- Toggle Code Folds
map("n", "<C-a>", "za")

-- Easy Wrap Selection
map("v", "(", "<ESC>`>a)<ESC>`<i(<ESC>")
map("v", "{", "<ESC>`>a}<ESC>`<i{<ESC>")
-- }}}

-- Stolen from Emacs {{{
--> Things I like about Emacs

--- Visual Mode
map("i", "<C-Space>", "<ESC>v")
map("n", "<C-Space>", "v")
-- }}}
