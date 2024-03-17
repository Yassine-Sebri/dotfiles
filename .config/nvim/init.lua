require 'options'
require 'mappings'
require 'lazy-setup'

if vim.fn.argc() == 0 then
  vim.defer_fn(function()
    vim.cmd 'Telescope find_files'
  end, 0)
end
