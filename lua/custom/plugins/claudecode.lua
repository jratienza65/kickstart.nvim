-- Claude Code integration (terminal, @mentions, diffs). Requires snacks.nvim.
vim.pack.add {
  'https://github.com/folke/snacks.nvim',
  'https://github.com/coder/claudecode.nvim',
}

require('claudecode').setup {
  terminal_cmd = '~/.local/bin/claude',
}

vim.keymap.set('n', '<leader>a', nil, { desc = 'AI/Claude Code' })
vim.keymap.set('n', '<leader>ac', '<cmd>ClaudeCode<cr>', { desc = 'Toggle Claude' })
vim.keymap.set('n', '<leader>af', '<cmd>ClaudeCodeFocus<cr>', { desc = 'Focus Claude' })
vim.keymap.set('n', '<leader>ar', '<cmd>ClaudeCode --resume<cr>', { desc = 'Resume Claude' })
vim.keymap.set('n', '<leader>aC', '<cmd>ClaudeCode --continue<cr>', { desc = 'Continue Claude' })
vim.keymap.set('n', '<leader>am', '<cmd>ClaudeCodeSelectModel<cr>', { desc = 'Select Claude model' })
vim.keymap.set('n', '<leader>ab', '<cmd>ClaudeCodeAdd %<cr>', { desc = 'Add current buffer' })
vim.keymap.set('v', '<leader>as', '<cmd>ClaudeCodeSend<cr>', { desc = 'Send to Claude' })
vim.keymap.set('n', '<leader>as', function()
  -- Only meaningful inside file-tree windows (as in the old lazy.nvim `ft = ...` condition)
  local ft = vim.bo.filetype
  if ft == 'NvimTree' or ft == 'neo-tree' or ft == 'oil' or ft == 'minifiles' then vim.cmd 'ClaudeCodeTreeAdd' end
end, { desc = 'Add file' })
-- Diff management
vim.keymap.set('n', '<leader>aa', '<cmd>ClaudeCodeDiffAccept<cr>', { desc = 'Accept diff' })
vim.keymap.set('n', '<leader>ad', '<cmd>ClaudeCodeDiffDeny<cr>', { desc = 'Deny diff' })
