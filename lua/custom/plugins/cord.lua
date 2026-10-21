-- Discord Rich Presence
vim.pack.add { 'https://github.com/vyfor/cord.nvim' }

require('cord').setup {}

-- Equivalent of lazy.nvim's `build = ':Cord update'` (fetches the prebuilt
-- server binary, no Rust toolchain needed). See kickstart's PackChanged
-- autocmd in init.lua for the same pattern.
vim.api.nvim_create_autocmd('PackChanged', {
  callback = function(ev)
    local name = ev.data.spec.name
    local kind = ev.data.kind
    if name ~= 'cord.nvim' or (kind ~= 'install' and kind ~= 'update') then return end

    if not ev.data.active then vim.cmd.packadd 'cord.nvim' end
    vim.cmd 'Cord update'
  end,
})
