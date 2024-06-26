vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = 'a'

vim.opt.showmode = false

vim.opt.clipboard = 'unnamedplus'
vim.g.clipboard = {
  name = 'win32yank',
  copy = {
    ['+'] = 'win32yank.exe -i --crlf',
    ['*'] = 'win32yank.exe -i --crlf',
  },
  paste = {
    ['+'] = 'win32yank.exe -o --lf',
    ['*'] = 'win32yank.exe -o --lf',
  },
  cache_enabled = 0,
}

vim.opt.breakindent = true

vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = 'yes'

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.opt.inccommand = 'split'

vim.opt.scrolloff = 10

vim.opt.hlsearch = true

for _, provider in ipairs { 'node', 'perl', 'python3', 'ruby' } do
  vim.g['loaded_' .. provider .. '_provider'] = 0
end

vim.filetype.add {
  filename = {
    ['.ansible-lint'] = 'yaml',
  },
  pattern = {
    ['.*handlers/.*%.ya?ml'] = 'yaml.ansible',
    ['.*roles/.*%.ya?ml'] = 'yaml.ansible',
    ['.*tasks/.*%.ya?ml'] = 'yaml.ansible',

    ['.*molecule/.*/create%.ya?ml'] = 'yaml.ansible',
    ['.*molecule/.*/prepare%.ya?ml'] = 'yaml.ansible',
    ['.*molecule/.*/converge%.ya?ml'] = 'yaml.ansible',
    ['.*molecule/.*/verify%.ya?ml'] = 'yaml.ansible',
    ['.*molecule/.*/destroy%.ya?ml'] = 'yaml.ansible',

    ['.*hosts.*.ya?ml'] = 'yaml.ansible',
  },
}
