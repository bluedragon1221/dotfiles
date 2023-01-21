-- vim:foldmethod=marker
local function map(mode, key, command)
    vim.keymap.set(mode, key, command, { silent = true })
end

vim.g.mapleader = " "

-- Basic Commands {{{
--> Commands that get me flying through nvim 
    -- Save
    map("n", "<C-s>", vim.cmd.w)

    -- Quit
    map("n", "<C-q>", vim.cmd.q)

    map("n", "<leader>t", ":vnew term://zsh<CR>i")
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

-- Restrict Arrow Keys {{{
-- map("n", "<Left>",  function() print("Use 'h'") end)
-- map("n", "<Right>", function() print("Use 'l'") end)
-- map("n", "<Up>",    function() print("Use 'k'") end)
-- map("n", "<Down>",  function() print("Use 'j'") end)

-- map("i", "<Left>",  function() print("Use '<M-h>'") end)
-- map("i", "<Right>", function() print("Use '<M-l>'") end)
-- map("i", "<Up>",    function() print("Use '<M-k>'") end)
-- map("i", "<Down>",  function() print("Use '<M-j>'") end)
-- -- }}}

-- Move in Insert Mode {{{
map("i", "<M-h>", "<ESC>ha")
map("i", "<M-j>", "<ESC>gjzza")
map("i", "<M-k>", "<ESC>gkzza")
map("i", "<M-l>", "<ESC>la")
-- }}}

map("n", "j", "gjzz")
map("n", "k", "gkzz")
