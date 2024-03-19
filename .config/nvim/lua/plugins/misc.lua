return {
  'tpope/vim-sleuth',
  'nvim-lua/plenary.nvim',

  { 'towolf/vim-helm', ft = 'helm' },

  { 'numToStr/Comment.nvim', opts = {} },

  { 'folke/todo-comments.nvim', event = 'VimEnter', opts = { signs = false } },

  { 'windwp/nvim-autopairs', event = 'InsertEnter', opts = {} },

  { 'akinsho/toggleterm.nvim', version = '*', config = true },

  { 'letieu/harpoon-lualine', dependencies = { 'ThePrimeagen/harpoon' } },
}
