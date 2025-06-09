-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

vim.keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>", { silent = true })
vim.keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>", { silent = true })
vim.keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>", { silent = true })
vim.keymap.set("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>", { silent = true })

-- https://medium.com/@xiangdejun_32936/why-i-switched-to-lazyvim-fc4fdeb888bc
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- New Tab
-- keymap("n", "te", ":tabedit<CR>", opts)
-- keymap("n", "sp", ":split<CR><C-w>l", opts)
-- keymap("n", "sv", ":vsplit<CR><C-w>l", opts)
--
-- Better line start/end
-- keymap("n", "H", "^", opts)
-- keymap("n", "L", "$", opts)
-- keymap("v", "H", "^", opts)
-- keymap("v", "L", "$", opts)

-- Better escape
keymap("i", "jj", "<ESC>", opts)
keymap("n", "<ESC>", "<ESC>:noh<CR>", opts)

-- Tab switch buffer
-- keymap("n", "<Tab>", ":bnext<CR>", opts)
-- keymap("n", "<S-Tab>", ":bprevious<CR>", opts)

-- Resize window using <ctrl> arrow keys
-- keymap("n", "<leader>wk", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
-- keymap("n", "<leader>wj", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
-- keymap("n", "<leader>wh", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
-- keymap("n", "<leader>wl", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Tmux navigation between nvim & terminal session
-- keymap("n", "<C-j>", "<cmd>NvimTmuxNavigateDown<CR>")
-- keymap("n", "<C-k>", "<cmd>NvimTmuxNavigateUp<CR>")
-- keymap("n", "<C-h>", "<cmd>NvimTmuxNavigateLeft<CR>")
-- keymap("n", "<C-l>", "<cmd>NvimTmuxNavigateRight<CR>")
