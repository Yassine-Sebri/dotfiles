local null_ls = require 'null-ls'

local opts = {
  sources = {
    null_ls.builtins.diagnostics.ansiblelint.with {
      args = { '-c', '/home/ysebri/.ansible-lint.yml', '-f', 'codeclimate', '-q', '--nocolor', '$FILENAME' },
    },
  },
}

return opts
