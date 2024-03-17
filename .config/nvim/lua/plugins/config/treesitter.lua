return {
  ensure_installed = { 'bash', 'lua', 'markdown', 'vim', 'vimdoc', 'go', 'python', 'yaml', 'terraform' },
  auto_install = true,
  indent = { enable = true },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  textobjects = {
    select = {
      enable = true,

      lookahead = true,

      keymaps = {
        ['aa'] = '@parameter.outer',
        ['ia'] = '@parameter.inner',
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner',
        ['ii'] = '@conditional.inner',
        ['ai'] = '@conditional.outer',
        ['il'] = '@loop.inner',
        ['al'] = '@loop.outer',
        ['at'] = '@comment.outer',
      },

      include_surrounding_whitespace = true,
    },
  },
}
