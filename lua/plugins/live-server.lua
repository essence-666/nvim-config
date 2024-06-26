return {
  'barrett-ruth/live-server.nvim',
  build = 'pnpm add -g live-server',
  cmd = { 'LiveServerStart', 'LiveServerStop' },
  config = function()
    require('live-server').setup()

    vim.api.nvim_set_keymap('n', '<leader>S', ':LiveServerStart<CR>', { noremap = true, silent = true })
  end
}

