return {
  'akinsho/toggleterm.nvim',
  keys = {
    { '<A-f>', '<cmd>ToggleTerm direction=float<CR>', desc = 'Open [F]loating terminal' },
    { '<A-f>', '<cmd>ToggleTerm<CR>', mode = 't', desc = 'Hide [F]loating terminal' },
    { '<leader>gu', desc = 'Open [G]it [U]i' },
  },
  version = '*',
  config = function()
    require('toggleterm').setup()
    local Terminal = require('toggleterm.terminal').Terminal
    local gitui = Terminal:new { cmd = 'gitui -t mocha.ron', direction = 'float', close_on_exit = true } ---@diagnostic disable-next-line: lowercase-global
    function _gitui_toggle()
      gitui:toggle()
    end

    vim.api.nvim_set_keymap('n', '<leader>gu', '<cmd>lua _gitui_toggle()<CR>', { noremap = true, silent = true })
  end,
}
