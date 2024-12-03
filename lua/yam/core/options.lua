vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt
-- Line numbers
opt.relativenumber = true
opt.number = true
-- Tabs & Identation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
-- Line wrapping
opt.wrap = false
-- Search settings
opt.ignorecase = true
opt.smartcase = true
-- Cursor line
opt.cursorline = true
-- Appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
-- Backspace
opt.backspace = "indent,eol,start"
-- Clipboard
opt.clipboard:append("unnamedplus")
-- Windows
opt.splitright = true
opt.splitbelow = true
-- Swapfile
opt.swapfile = false
