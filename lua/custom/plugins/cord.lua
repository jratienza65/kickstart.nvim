return {
  'vyfor/cord.nvim',
  build = ':Cord update', -- fetches the prebuilt server binary (no Rust toolchain needed)
  event = 'VeryLazy',
  opts = {},
}
