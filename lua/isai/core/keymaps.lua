vim.g.mapleader = " "

local keymap = vim.keymap.set

-- general
keymap("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- window navigation
keymap("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })

-- window resizing
keymap("n", "<C-Up>", "<C-w>+", { desc = "Increase window height" })
keymap("n", "<C-Down>", "<C-w>-", { desc = "Decrease window height" })
keymap("n", "<C-Left>", "<C-w><", { desc = "Decrease window width" })
keymap("n", "<C-Right>", "<C-w>>", { desc = "Increase window width" })

-- buffers (tabs)
keymap("n", "<Tab>", ":bnext<CR>", { desc = "Next buffer" })
keymap("n", "<S-Tab>", ":bprev<CR>", { desc = "Previous buffer" })
keymap("n", "<leader>x", ":bdelete<CR>", { desc = "Close buffer" })

-- file explorer
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
-- terminal
keymap("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
keymap("t", "<C-h>", "<C-\\><C-n><C-w>h", { desc = "Move to left window from terminal" })
keymap("t", "<C-l>", "<C-\\><C-n><C-w>l", { desc = "Move to right window from terminal" })
keymap("t", "<C-j>", "<C-\\><C-n><C-w>j", { desc = "Move to lower window from terminal" })
keymap("t", "<C-k>", "<C-\\><C-n><C-w>k", { desc = "Move to upper window from terminal" })
keymap("n", "<leader>t", ":terminal<CR>", { desc = "Open terminal" })
