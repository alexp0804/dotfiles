-- leader key
vim.g.mapleader = " "

-- unbind arrow keys
vim.keymap.set({ "n", "v", "i" }, "<Up>", "<Nop>")
vim.keymap.set({ "n", "v", "i" }, "<Left>", "<Nop>")
vim.keymap.set({ "n", "v", "i" }, "<Right>", "<Nop>")
vim.keymap.set({ "n", "v", "i" }, "<Down>", "<Nop>")

-- clear search highlight, two options
vim.keymap.set("n", "<Esc><Esc>", "<Esc>:nohlsearch<cr><Esc>", { desc = "Clear highlighted search results" })
vim.keymap.set("n", "<CR>", ":noh<CR><CR>", { desc = "Clear highlighted search results" })

-- move highlighted text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- yank til end of line
vim.keymap.set("n", "Y", "yg$")

-- dont move cursor when joining lines
vim.keymap.set("n", "J", "mzJ`z")

-- center screen on cursor when scrolling or searching
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- jump to placeholder (<++>) and enter insert mode
vim.keymap.set("n", "<leader><space>", "/<++><CR>c4l", { desc = "Jump to placeholder (<++>) and replace" })

-- creating panes
vim.keymap.set("n", "<leader>s", "<Nop>", { desc = "Panes" }) -- Nop keybind added for which-key description
vim.keymap.set("n", "<leader>s-", "<C-w>v", { desc = "Split pane veritcally" })
vim.keymap.set("n", "<leader>s\\", "<C-w>s", { desc = "Split pane horizontally" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close pane" })

-- resizing panes
vim.keymap.set("n", "<leader>S>", "20<C-w>>", { desc = "Inc. pane horizontal size" })
vim.keymap.set("n", "<leader>S<", "20<C-w><", { desc = "Dec. pane horizontal size" })
vim.keymap.set("n", "<leader>S+", "20<C-w>+", { desc = "Inc. pane veritcal size" })
vim.keymap.set("n", "<leader>S-", "20<C-w>-", { desc = "Dec. pane veritcal size" })
vim.keymap.set("n", "<leader>S=", "<C-w>=", { desc = "Equalize pane size" })

-- navigating panes
vim.keymap.set("n", "<leader>h", "<C-w>h", { desc = "Nav. left" })
vim.keymap.set("n", "<leader>j", "<C-w>j", { desc = "Nav. down" })
vim.keymap.set("n", "<leader>k", "<C-w>k", { desc = "Nav. up" })
vim.keymap.set("n", "<leader>l", "<C-w>l", { desc = "Nav. right" })
