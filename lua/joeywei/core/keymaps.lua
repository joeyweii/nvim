local keymap = vim.keymap.set -- for conciseness
local opts = { noremap = true, silent = true }

-- set leader key to space
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap("i", "jk", "<ESC>", opts)

-- clear search highlights
keymap("n", "<leader>nh", ":nohl<CR>", opts)

-- delete single character without copying into register
keymap("n", "x", '"_x', opts)

-- window management
keymap("n", "<leader>sv", "<C-w>v", opts) -- split window vertically
keymap("n", "<leader>sh", "<C-w>s", opts) -- split window horizontally
keymap("n", "<leader>se", "<C-w>=", opts) -- make split windows equal width & height

-- tab selection
keymap("n", "<leader>1", "1gt", opts)
keymap("n", "<leader>2", "2gt", opts)
keymap("n", "<leader>3", "3gt", opts)
keymap("n", "<leader>4", "4gt", opts)
keymap("n", "<leader>5", "5gt", opts)
keymap("n", "<leader>6", "6gt", opts)
keymap("n", "<leader>7", "7gt", opts)
keymap("n", "<leader>8", "8gt", opts)
keymap("n", "<leader>9", "9gt", opts)

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- toggle split window maximization

-- nvim-tree
keymap("n", "<leader>t", ":NvimTreeToggle<CR>", opts) -- toggle file explorer

-- telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts) -- find files within current working directory, respects .gitignore
keymap("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", opts) -- find string in current working directory as you type
keymap("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", opts) -- find string under cursor in current working directory
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts) -- list open buffers in current neovim instance
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts) -- list available help tags

-- undo tree
keymap("n", "<leader>u",  vim.cmd.UndotreeToggle, opts)

-- hop
vim.api.nvim_set_keymap("n", "<Leader>b", "<cmd>HopWordBC<CR>", opts)
vim.api.nvim_set_keymap("n", "<Leader>w", "<cmd>HopWordAC<CR>", opts)
vim.api.nvim_set_keymap("n", "<Leader>j", "<cmd>HopLineAC<CR>", opts)
vim.api.nvim_set_keymap("n", "<Leader>k", "<cmd>HopLineBC<CR>", opts)

-- saga
keymap("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
keymap("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>")
keymap("n", "<leader>o", "<cmd>Lspsaga outline<CR>")
keymap("n", "gd", "<cmd>Lspsaga goto_definition<CR>")
keymap("n", "gr", "<cmd>Lspsaga lsp_finder<CR>")
keymap("n", "gp", "<cmd>Lspsaga peek_definition<CR>")
keymap("n", "gt", "<cmd>Lspsaga peek_type_definition<CR>")

-- lspconfig
local opts2 = { noremap = true, silent = true, buffer = bufnr}
keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts2) -- got to declaration
keymap("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", opts2) -- got to declaration

-- trouble
keymap("n", "<leader>d", "<cmd>TroubleToggle<cr>", opts)
