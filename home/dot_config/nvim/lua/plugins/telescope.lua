-- Fuzzy Finder (files, lsp, etc)
return {{
  'nvim-telescope/telescope.nvim',
  version = '*',
  dependencies = {'nvim-lua/plenary.nvim'}
},

-- Fuzzy Finder Algorithm which requires local dependencies to be built.
-- Only load if `make` is available. Make sure you have the system
-- requirements installed.
        {
  'nvim-telescope/telescope-fzf-native.nvim',
  -- NOTE: If you are having trouble with this installation,
  --       refer to the README for telescope-fzf-native for more instructions.
  build = 'make',
  cond = function()
    return vim.fn.executable 'make' == 1
  end,

  config = function()
    local telescope = require("telescope")
    local builtin = require('telescope.builtin')

    telescope.load_extension("fzf")

    telescope.setup({})

    vim.keymap
      .set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
  end
}}
