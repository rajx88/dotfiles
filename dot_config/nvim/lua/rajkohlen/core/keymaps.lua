local opts = { silent = true }
-- Set<space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- [[ Basic Keymaps ]]
-- Keymaps for better default experience:q
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', opts)

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- window navigation
vim.keymap.set("n", "<M-h>", "<C-w>h", opts)
vim.keymap.set("n", "<M-j>", "<C-w>j", opts)
vim.keymap.set("n", "<M-k>", "<C-w>k", opts)
vim.keymap.set("n", "<M-l>", "<C-w>l", opts)

vim.keymap.set("n", "\\", ":vsplit<CR>", opts)
vim.keymap.set("n", "-", ":split<CR>", opts)
vim.keymap.set("n", "<Leader>bn", ":bnext<CR>", opts)
vim.keymap.set("n", "<Leader>bb", ":bprev<CR>", opts)
