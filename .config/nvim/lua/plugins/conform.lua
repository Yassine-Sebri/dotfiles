return {
  'stevearc/conform.nvim',
  ft = { 'lua', 'markdown', 'go' },
  opts = {
    notify_on_error = false,
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
    formatters_by_ft = {
      lua = { 'stylua' },
      markdown = { 'prettierd' },
      go = { 'gofumpt', 'goimports-reviser' },
    },
  },
}
