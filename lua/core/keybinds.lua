local map = vim.api.nvim_set_keymap
local keymap = vim.keymap.set
local silentMap = { noremap = true, silent = true }

map("n", "<Esc>", ":noh<CR>", silentMap)
-- Change to normal mode when pressing O
map("i", "<Esc>", "<Esc>", silentMap)

-- Create tab keybind to indent in visual mode
map("v", "<Tab>", ">gv", { noremap = true })
map("v", "<S-Tab>", "<gv", { noremap = true })

-- Move Up/Down selected
keymap("v", "J", ":m '>+1<cr>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

-- Git Conflict
keymap("n", "co", "<Plug>(git-conflict-ours)")
keymap("n", "ct", "<Plug>(git-conflict-theirs)")
keymap("n", "cb", "<Plug>(git-conflict-both)")
keymap("n", "c0", "<Plug>(git-conflict-none)")
keymap("n", "]x", "<Plug>(git-conflict-prev-conflict)")
keymap("n", "[x", "<Plug>(git-conflict-next-conflict)")

-- Refactoring
keymap("v", "g?r", ":lua require('refactoring').select_refactor()<CR>")

-- Debugprint
keymap("n", "g?d", function() require("debugprint").deleteprints() end)

-- Translate selection
keymap("v", "g?t", ":Translate pt<cr>")

-- LspSaga
keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>")
keymap("n", "gp", "<cmd>Lspsaga peek_definition<CR>")
keymap("n", "gd", "<cmd>Lspsaga goto_definition<CR>")
keymap("n", "gt", "<cmd>Lspsaga peek_type_definition<CR>")
-- keymap("n", "gt", "<cmd>Lspsaga goto_type_definition<CR>")

-- Leap
keymap("n", "s", "<Plug>(leap-forward-till)")
keymap("n", "S", "<Plug>(leap-backward-till)")

-- Telescope File Browser
keymap("n", "<space>e", "<cmd>NvimTreeToggle<cr>")

-- Buffer Navigation
map("n", "L", ":BufferNext<cr>", { silent = true })
map("n", "<C-L>", ":BufferMoveNext<cr>", { noremap = true, silent = true })
map("n", "H", ":BufferPrevious<cr>", { silent = true })
map("n", "<C-H>", ":BufferMovePrevious<cr>", { noremap = true, silent = true })

-- Rest Plugin
keymap("n", "<space>RR", "<Plug>RestNvim")
keymap("n", "<space>RP", "<Plug>RestNvimPreview")
keymap("n", "<space>RL", "<Plug>RestNvimLast")

-- Gen Plugin
keymap({ 'n', 'v' }, '<leader>]', ':Gen<CR>')

-- Copilot Chat
keymap("n", "<leader>ccq", function()
  local input = vim.fn.input("Quick Chat: ")
  if input ~= "" then
    require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
  end
end, { desc = "CopilotChat - Quick chat" })

