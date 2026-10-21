-- Extra gitsigns.nvim settings on top of kickstart's setup in init.lua.
-- gitsigns applies config fields individually, so calling setup() again with
-- only this field doesn't disturb kickstart's own gitsigns configuration.
require('gitsigns').setup { current_line_blame = true }
