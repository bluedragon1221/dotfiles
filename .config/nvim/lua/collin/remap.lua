-- vim:foldmethod=marker

-- Basic Commands {{{
--> Commands that get me flying through nvim 

--- Exit Editor, Stay in Nvim
vim.keymap.set("n", "<C-w>", vim.cmd.Ex)

--- Exit
vim.keymap.set("n", "<C-q>", vim.cmd.q)

--- Save
vim.keymap.set("n", "<C-s>", vim.cmd.w)
vim.keymap.set("i", "<C-s>", vim.cmd.w)
-- }}}

-- Toggles {{{
--- Toggle Line Numbers
vim.keymap.set("n", "<C-r>", "nu! rnu!")

--- Toggle Code Folds
vim.keymap.set("n", "<C-a>", "za")

-- Easy Wrap Selection
vim.keymap.set("v", "(", "<ESC>`>a)<ESC>`<i(<ESC>")
vim.keymap.set("v", "{", "<ESC>`>a}<ESC>`<i{<ESC>")
-- }}}

-- Stolen from Emacs {{{
--> Things I like about Emacs

--- Visual Mode
vim.keymap.set("i", "<C-Space>", "<ESC>v")
vim.keymap.set("n", "<C-Space>", "v")

--- Scratch Buffer
vim.keymap.set("n", "<C-;>", vim.cmd.new)
-- }}}
