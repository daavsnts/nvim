-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use('nvim-lua/plenary.nvim')
  use('wbthomason/packer.nvim')
  use({
    'Mofiqul/dracula.nvim',
    config = function()
      vim.cmd('colorscheme dracula')
      vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
    end
  })
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('nvim-treesitter/playground')
  use({
    "nvim-tree/nvim-tree.lua",
    after = "nvim-web-devicons",
    requires = "nvim-tree/nvim-web-devicons",
  })
  use('lewis6991/gitsigns.nvim')
  use('romgrk/barbar.nvim')
  use('m4xshen/autoclose.nvim')
  use('leafOfTree/vim-svelte-plugin')
  use {'neoclide/coc.nvim', branch = 'release'}
end)
