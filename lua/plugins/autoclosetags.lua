
return {
  -- Ensure you have nvim-treesitter installed and configured
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = { "html", "javascript", "typescript", "tsx" },
        highlight = {
          enable = true,
        },
      }
    end,
  },

  -- nvim-ts-autotag plugin
  {
    'windwp/nvim-ts-autotag',
    event = 'InsertEnter', -- Load on entering insert mode
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      require('nvim-ts-autotag').setup({
        enable_close = true, -- Auto close tags
        enable_rename = true, -- Auto rename pairs of tags
        enable_close_on_slash = false, -- Auto close on trailing </
        per_filetype = {
          ["html"] = {
            enable_close = false,
          }
        }
      })
    end,
  },
}

