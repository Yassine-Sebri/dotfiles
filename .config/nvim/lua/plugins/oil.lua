return {
  'stevearc/oil.nvim',
  keys = {
    { '-', '<CMD>Oil<CR>', desc = 'Open file explorer' },
  },
  opts = {
    skip_confirm_for_simple_edits = true,
  },
  config = function(_, opts)
    require('oil').setup(opts)
  end,
}
