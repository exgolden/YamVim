-- Leader
vim.g.mapleader = " "
local km = vim.keymap
-- Clear search highlight
km.set("n", "<leader>nh", ":nohl<CR>", { desc  = "Clear search highlights" })
-- Windows management
km.set("n", "<leader>sv", "<C-w>v", { desc  = "Split windows vertically" })
km.set("n", "<leader>sh", "<C-w>s", { desc  = "Split windows horizontally" })
km.set("n", "<leader>se", "<C-w>=", { desc  = "Make splits equal size" })
km.set("n", "<leader>sx", "<CMD>close<CR>", { desc  = "Close current split" })
-- Tab management (Change later to VChad ones
km.set("n", "<leader>to", "<CMD>tabnew<CR>", { desc  = "Open new tab" })
km.set("n", "<leader>tx", "<CMD>tabclose<CR>", { desc  = "Close current tab" })
km.set("n", "<leader>tn", "<CMD>tabn<CR>", { desc  = "Go to next tab" })
km.set("n", "<leader>tp", "<CMD>tabp<CR>", { desc  = "Go to previous tab" })
km.set("n", "<leader>tf", "<CMD>tabnew %<CR>", { desc  = "Open current buffer in new tab" })
