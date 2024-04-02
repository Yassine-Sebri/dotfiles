return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup {}

    local conf = require('telescope.config').values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require('telescope.pickers')
        .new({}, {
          prompt_title = 'Harpoon',
          finder = require('telescope.finders').new_table {
            results = file_paths,
          },
          previewer = conf.file_previewer {},
          sorter = conf.generic_sorter {},
        })
        :find()
    end

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():append()
    end, { desc = 'Append buffer to harpoon list' })

    vim.keymap.set('n', '<leader>x', function()
      harpoon:list():remove()
    end, { desc = 'Remove buffer from harpoon list' })

    vim.keymap.set('n', '<C-q>', function()
      harpoon:list():select(1)
    end, { desc = 'Go to first buffer in harpoon' })

    vim.keymap.set('n', '<C-w>', function()
      harpoon:list():select(2)
    end, { desc = 'Go to second buffer in harpoon' })

    vim.keymap.set('n', '<C-e>', function()
      harpoon:list():select(3)
    end, { desc = 'Go to third buffer in harpoon' })

    vim.keymap.set('n', '<C-p>', function()
      harpoon:list():prev()
    end, { desc = 'Go to previous buffer in harpoon' })

    vim.keymap.set('n', '<C-n>', function()
      harpoon:list():next()
    end, { desc = 'Go to next buffer in harpoon' })
  end,
}
