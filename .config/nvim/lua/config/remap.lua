-- Remaps

vim.keymap.set("n", "<Space>", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = "space"

vim.keymap.set("n", "<Tab>", ":bnext<CR>")
vim.keymap.set("n", "<S-TAB>", ":bprevious<CR>")
vim.keymap.set("n", "<C-e>", ":NvimTreeToggle<CR>")

vim.keymap.set("n", "<C-Up>", "{")
vim.keymap.set("n", "<C-Down>", "}")
vim.keymap.set("n", "<C-K>", "{")
vim.keymap.set("n", "<C-J>", "}")

vim.keymap.set("n", "<C-Left>", "b")
vim.keymap.set("n", "<C-Right>", "w")
