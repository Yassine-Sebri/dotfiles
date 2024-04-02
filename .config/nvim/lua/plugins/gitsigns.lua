return {
  'lewis6991/gitsigns.nvim',
  event = 'VimEnter',
  opts = {
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },

    on_attach = function(bufnr)
      local gs = package.loaded.gitsigns

      local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
      end

      map('n', ']c', function()
        if vim.wo.diff then
          return ']c'
        end
        vim.schedule(function()
          gs.next_hunk()
        end)
        return '<Ignore>'
      end, { desc = 'Go to next hunk', expr = true })

      map('n', '[c', function()
        if vim.wo.diff then
          return '[c'
        end
        vim.schedule(function()
          gs.prev_hunk()
        end)
        return '<Ignore>'
      end, { desc = 'Go to previous hunk', expr = true })

      map('n', '<leader>gb', gs.toggle_current_line_blame, { desc = 'Toggle current line blame' })
      map('n', '<leader>gd', gs.preview_hunk_inline, { desc = 'Preview hunk difference' })
    end,
  },
}
