vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Move [U]p half a page' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Move [D]own half a page' })

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })

vim.keymap.set('n', '<A-j>', '<cmd>set paste<CR>m`o<Esc>``<cmd>set nopaste<CR>', { desc = 'Insert line below' })
vim.keymap.set('n', '<A-k>', '<cmd>set paste<CR>m`O<Esc>``<cmd>set nopaste<CR>', { desc = 'Insert line above' })

vim.keymap.set('x', '<leader>p', [["_dP]], { desc = 'Paste without overriding clipboard' })
vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]], { desc = 'Delete without overriding clipboard' })
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Remove search highlight' })

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setqflist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>', { desc = 'Change current tmux session' })

vim.keymap.set('i', 'jj', '<Esc>', { desc = 'Exit insert mode' })
vim.keymap.set('i', '<C-j>', '<Down>', { desc = 'Move down' })
vim.keymap.set('i', '<C-k>', '<Up>', { desc = 'Move up' })

vim.keymap.set('v', '>', '>gv', { desc = 'Indent right' })
vim.keymap.set('v', '<', '<gv', { desc = 'Indent left' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
