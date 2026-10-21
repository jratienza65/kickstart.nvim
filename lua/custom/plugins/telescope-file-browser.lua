-- Telescope file browser. Telescope + plenary come from kickstart's config.
vim.pack.add { 'https://github.com/nvim-telescope/telescope-file-browser.nvim' }

pcall(require('telescope').load_extension, 'file_browser')

-- Options are passed per call instead of telescope.setup() so they can't
-- clash with kickstart's own telescope configuration.
vim.keymap.set('n', '<leader>fb', function()
  require('telescope').extensions.file_browser.file_browser {
    hidden = true,
    respect_gitignore = false,
  }
end, { desc = '[F]ile [B]rowser' })
