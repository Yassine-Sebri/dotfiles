local M = {}

M.general = {
  n = {
    ["<A-j>"]      = { "<cmd>set paste<CR>m`o<Esc>``<cmd>set nopaste<CR>", "Insert new line below" },
    ["<A-k>"]      = { "<cmd>set paste<CR>m`O<Esc>``<cmd>set nopaste<CR>", "Insert new line above" },
    ["<leader>v"]  = { "<cmd>vnew<CR>", "Split window vertically" },
    ["<leader>cw"] = { "<cmd>lua require('nvchad.tabufline').close_buffer()<CR><cmd>close<CR>", "Close current window" },
    ["<C-f>"]      = { "<cmd>silent !tmux neww tmux-sessionizer<CR>", "Close current window" },
    ["E"]          = { "<cmd>lua vim.diagnostic.open_float(nil, {focus=false, scope='cursor'})<CR>", "Floating diagnostic window" },
  },
  i = {
    ["jj"] = { "<Esc>", "Switch to normal mode" }
  }
}

M.telescope = {
  plugin = true,

  n = {
    -- git
    ["<leader>gs"] = { "<cmd> Telescope git_branches <CR>", "Git branches" },
  },
}

M.gitsigns = {
  plugin = true,

  n = {
    ["<leader>gb"] = {
      function()
        package.loaded.gitsigns.toggle_current_line_blame()
      end,
      "Toggle current blame line",
    },
  },
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags"
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags"
    }
  }
}

return M
