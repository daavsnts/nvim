return {
  "junegunn/fzf.vim",
  config = function()
    vim.keymap.set("n", "<leader>ag", ":Ag <CR>")
    vim.keymap.set("n", "<leader>rg", ":Rg <CR>")
  end
}
