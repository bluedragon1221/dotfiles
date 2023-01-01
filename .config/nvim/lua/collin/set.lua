-- vim:foldmethod=marker

local o = vim.o
local g = vim.g 

-- Tabs {{{
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
-- }}}

o.smartindent = true

o.modelines = 1

o.hlsearch = false
o.incsearch = true

o.scrolloff = 15
o.signcolumn = "yes"

o.cursorline = false
o.cursorcolumn = false

o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false

o.splitright = true

g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0
g.loaded_node_provider = 0
