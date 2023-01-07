-- vim:foldmethod=marker

local function map(mode, key, command)
    vim.keymap.set(mode, key, command, {silent = true})
end

vim.g.mapleader = " "

map("i", "<C-y>", "<ESC>:Emmet ")

-- Basic Commands {{{
--> Commands that get me flying through nvim 
    -- Exit
    map("n", "<C-q>", vim.cmd.q)

    -- Save
    map("n", "<C-s>", vim.cmd.w)
    map("i", "<C-s>", vim.cmd.w)

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

-- Toggle Netrw
map("n", "<C-e>", vim.cmd.Lexplore)
-- }}}

-- Stolen from Emacs {{{
--> Things I like about Emacs

--- Visual Mode
map("i", "<C-Space>", "<ESC>v")
map("n", "<C-Space>", "v")
-- }}}

