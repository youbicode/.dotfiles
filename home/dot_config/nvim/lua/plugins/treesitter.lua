-- Highlight, edit, and navigate code
return {
  'nvim-treesitter/nvim-treesitter',
  dependencies = {'nvim-treesitter/nvim-treesitter-textobjects'},
  config = function()
    local treesitter = require('nvim-treesitter.configs')
    treesitter.setup({
      ensure_installed = {"astro", "bash", "css",
                          "dockerfile", "graphql", "html",
                          "javascript", "jsdoc", "json",
                          "jsonc", "lua", "markdown",
                          "scss", "sql", "toml", "tsx",
                          "yaml", "typescript"},
      highlight = {
        enable = true
      },
      indent = {
        enable = true
      }
    })
  end
}
