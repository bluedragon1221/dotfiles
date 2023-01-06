-- vim:foldmethod=marker
local o = vim.o
local g = vim.g 

-- Tag Length {{{
    
    -- Tab Width: 4
    o.tabstop = 4
    o.softtabstop = 4
    o.shiftwidth = 4
    
    o.expandtab = true
    o.smartindent = true
--}}}

-- Search {{{
    
    -- Highlighting
    o.hlsearch = false
    o.incsearch = true

--}}}

-- File Backups {{{
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false
-- }}}

vim.cmd.set("noshowmode")

vim.cmd.set("nocompatible")

vim.cmd([[
au TextYankPost * silent! lua vim.highlight.on_yank()

]])

o.modelines = 1

o.scrolloff = 15
o.signcolumn = "no"

o.cursorline = false
o.cursorcolumn = false

o.splitright = true

o.clipboard = "unnamedplus"

g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0
g.loaded_node_provider = 0
