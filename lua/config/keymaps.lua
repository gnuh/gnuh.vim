-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set
map("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })
map("n", "<C-L>", "<cmd>BufferLineMoveNext<cr>", { noremap = true, silent = true })
map("n", "<C-H>", "<cmd>BufferLineMovePrev<cr>", { noremap = true, silent = true })
map("n", "<leader>aa", "<cmd>CodeCompanionChat<cr>", { desc = "Code Companion Chat" })
map("n", "<leader>aA", "<cmd>CodeCompanionActions<cr>", { desc = "Code Companion Actions" })
