return {
  'tpope/vim-sleuth',

  { 'numToStr/Comment.nvim', opts = {} },

  {
    'lewis6991/gitsigns.nvim',
    event = 'VimEnter',
    opts = function()
      return require 'plugins.config.gitsigns'
    end,
  },

  {
    'folke/which-key.nvim',
    event = 'VimEnter',
    config = function()
      require 'plugins.config.which-key'
    end,
  },

  {
    'nvim-telescope/telescope.nvim',
    event = 'VimEnter',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },
      { 'nvim-telescope/telescope-ui-select.nvim' },
      { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    },
    config = function()
      require 'plugins.config.telescope'
    end,
  },

  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'WhoIsSethDaniel/mason-tool-installer.nvim',
      { 'j-hui/fidget.nvim', opts = {} },
      { 'folke/neodev.nvim', opts = {} },
    },
    config = function()
      require 'plugins.config.lspconfig'
    end,
  },

  {
    'stevearc/conform.nvim',
    ft = { 'lua', 'markdown' },
    opts = function()
      return require 'plugins.config.conform'
    end,
  },

  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
    },
    config = function()
      require 'plugins.config.nvim-cmp'
    end,
  },

  {
    'catppuccin/nvim',
    priority = 1000,
    name = 'catppuccin',
    init = function()
      vim.cmd.colorscheme 'catppuccin'
    end,
  },

  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },

  {
    'echasnovski/mini.nvim',
    config = function()
      require 'plugins.config.mini'
    end,
  },

  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    opts = function()
      return require 'plugins.config.treesitter'
    end,
    config = function(_, opts)
      require('nvim-treesitter.configs').setup(opts)
    end,
  },

  {
    'stevearc/oil.nvim',
    opts = {
      skip_confirm_for_simple_edits = true,
    },
    config = function(_, opts)
      require('oil').setup(opts)
    end,
  },

  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = {},
  },

  {
    'towolf/vim-helm',
    ft = 'helm',
  },

  {
    'nvimtools/none-ls.nvim',
    ft = { 'yaml.ansible' },
    opts = function()
      return require 'plugins.config.null-ls'
    end,
  },

  { 'akinsho/toggleterm.nvim', version = '*', config = true },

  {
    'nvim-lualine/lualine.nvim',
    opts = {
      options = {
        theme = 'catppuccin',
        component_separators = ' ',
        section_separators = { left = '', right = '' },
      },
      sections = {
        lualine_c = {
          { 'filename', path = 1 },
        },

        lualine_x = { 'harpoon2' },
      },
    },
  },

  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require 'plugins.config.harpoon'
    end,
  },

  'letieu/harpoon-lualine',
}
