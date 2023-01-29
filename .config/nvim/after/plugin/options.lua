local o = vim.opt

o.breakindent = true
o.clipboard = "unnamedplus"
o.hidden = true
o.hlsearch = false
o.ignorecase = true
o.laststatus = 3
o.mouse = "a"
o.number = true
o.relativenumber = false
o.cursorline = true
o.signcolumn = "yes"
o.smartcase = true
o.splitright = true
o.termguicolors = true
o.undofile = true
o.updatetime = 250

vim.cmd.set("noshowmode")

o.path:remove("/usr/include")
o.wildignorecase = true
o.wildignore:append("**/node_modules/*")
o.wildignore:append("**/.git/*")

vim.g.loaded_pearl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_php_provider = 0
