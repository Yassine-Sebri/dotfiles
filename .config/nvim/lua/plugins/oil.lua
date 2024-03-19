return {
  'stevearc/oil.nvim',
  opts = {
    skip_confirm_for_simple_edits = true,
  },
  config = function(_, opts)
    require('oil').setup(opts)
  end,
}
