return {
  'catppuccin/nvim',
  priority = 1000,
  name = 'catppuccin',
  init = function()
    vim.cmd.colorscheme 'catppuccin'
  end,
}
