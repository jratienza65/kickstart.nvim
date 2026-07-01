return {
  'johnseth97/codex.nvim',
  cmd = { 'Codex', 'CodexToggle' },
  keys = {
    {
      '<leader>cc',
      function() require('codex').toggle() end,
      desc = 'Toggle Codex popup or side-panel',
      mode = { 'n', 't' },
    },
  },
  opts = {
    keymaps = {
      toggle = '<leader>cx', -- toggle Codex window
      quit = '<C-q>', -- close the Codex window
    },
    border = 'rounded', -- 'single' | 'double' | 'rounded'
    width = 0.8,
    height = 0.8,
    model = nil, -- e.g. 'o3-mini'
    autoinstall = true, -- auto-install the Codex CLI if missing
    panel = false, -- side-panel instead of floating window
    use_buffer = false, -- capture stdout into a normal buffer
  },
}
