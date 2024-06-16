vim.g.mapleader = " "

vim.keymap.set("v", "K", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "J", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>w", "<C-W>")

vim.keymap.set("n", "<A-Up>", ":normal! 3k<CR>")
vim.keymap.set("n", "<A-Down>", ":normal! 3j<CR>")
vim.keymap.set("n", "<A-Right>", ":normal! 10l<CR>")
vim.keymap.set("n", "<A-Left>", ":normal! 10h<CR>")

vim.keymap.set("n", "<leader>y", "\"*y")
