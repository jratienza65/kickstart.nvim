return {
  'lewis6991/hover.nvim',
  config = function()
    require('hover').setup {
      providers = {
        'hover.providers.diagnostic',
        'hover.providers.lsp',
        'hover.providers.dap',
        'hover.providers.man',
        'hover.providers.dictionary',
      },
      preview_opts = {
        border = 'single',
      },
      preview_window = false,
      title = true,
      mouse_providers = {
        'hover.providers.lsp',
      },
      mouse_delay = 1000,
    }

    vim.keymap.set('n', 'K', require('hover').hover, { desc = 'hover.nvim' })
    vim.keymap.set('n', 'gK', require('hover').hover_select, { desc = 'hover.nvim (select)' })
    vim.keymap.set('n', '<C-p>', function() require('hover').hover_switch 'previous' end, { desc = 'hover.nvim (previous source)' })
    vim.keymap.set('n', '<C-n>', function() require('hover').hover_switch 'next' end, { desc = 'hover.nvim (next source)' })

    vim.keymap.set('n', '<MouseMove>', require('hover').hover_mouse, { desc = 'hover.nvim (mouse)' })
    vim.o.mousemoveevent = true
  end,
}
