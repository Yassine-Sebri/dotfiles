local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "ansible-language-server",
        "gopls",
        "helm-ls",
        "prettierd",
        "pyright",
        "terraform-ls",
        "tflint",
        "yaml-language-server",
      }
    }
  },
  {
    "NvChad/nvterm",
    config = function ()
      require("nvterm").setup({
        terminals = {
          type_opts = {
            float = {
              relative = 'editor',
              row = 0.2,
              col = 0.15,
              width = 0.7,
              height = 0.6,
              border = "single",
            },
          }
        },
      })
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    ft = { "go", "markdown", "yaml.ansible" },
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "tpope/vim-fugitive",
    event = "VeryLazy",
  },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function(_, opts)
      require("gopher").setup(opts)
      require("core.utils").load_mappings("gopher")
    end,
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },
  {
    "towolf/vim-helm",
    ft = "helm",
  },
  {
    "NvChad/nvim-colorizer.lua",
    opts = {
      user_default_options = {
        mode = "background", -- You can change the mode to "foreground" to colorize foreground color codes
        RGB = true, -- Enable RGB color notation support
        RRGGBB = true, -- Enable RRGGBB color notation support
        names = false, -- Disable color name highlighting (e.g., "red", "blue", etc.)
        css = true, -- Disable CSS color notation support      
      }
    }
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end,
  },
  {
    "tpope/vim-obsession",
    event = "VeryLazy",
  },
}
return plugins
