-- auto save when navigating away from the file
vim.opt.autowrite = true

-- numbers, relative numbers
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.numberwidth = 5

--- tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- no linewrap
vim.opt.wrap = false

-- search
vim.opt.ignorecase = true -- case-insensitive
vim.opt.smartcase = true -- case-sensitive if capital letter included in search
vim.opt.hlsearch = true -- highlights results
vim.opt.incsearch = true -- search as you type

-- appearance
vim.opt.termguicolors = true -- use 24-bit color
vim.opt.cursorline = true -- highlight current line
vim.opt.colorcolumn = "100" -- show line at 100 chars (write better code).
vim.opt.signcolumn = "yes:3" -- keep signcolumn always on by default, 3 icons width

-- minimum number of screen lines above and below cursor
-- may want to change this depending on size of your display.
vim.opt.scrolloff = 10

-- shows substitute effects that occur off-screen in a window at the bottom
vim.opt.inccommand = "split"

-- statusline on every window
vim.opt.laststatus = 2

-- don't show "-- INSERT --", etc, because its already in the lualine plugin
vim.opt.showmode = false

-- backspace behaves sanely (allows you to backspace over autoindents, line breaks, start of lines)
vim.opt.backspace = "indent,eol,start"

-- use system clipboard
vim.opt.clipboard:append("unnamedplus")

-- split window behavior (new vertical windows on right, new horizontal windows below)
vim.opt.splitright = true
vim.opt.splitbelow = true
