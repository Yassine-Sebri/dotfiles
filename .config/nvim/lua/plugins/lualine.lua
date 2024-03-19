return {
  'nvim-lualine/lualine.nvim',
  opts = {
    options = {
      theme = 'catppuccin',
      component_separators = ' ',
      section_separators = { left = '', right = '' },
    },
    sections = {
      lualine_c = {
        { 'filename', path = 1 },
      },

      lualine_x = { 'harpoon2' },
    },
  },
}
