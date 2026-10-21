-- Personal option overrides. Loaded after kickstart's init.lua, so these win.

-- Relative line numbers (on top of kickstart's `number = true` → hybrid)
vim.o.relativenumber = true

-- Keep the OS clipboard independent (overrides kickstart's `unnamedplus`).
-- Both are inside vim.schedule, and callbacks run in order, so this lands last.
vim.schedule(function() vim.o.clipboard = '' end)
