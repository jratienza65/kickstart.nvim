return {
  'yetone/avante.nvim',
  -- build from source with `make BUILD_FROM_SOURCE=true`
  build = vim.fn.has 'win32' ~= 0 and 'powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false' or 'make',
  event = 'VeryLazy',
  version = false, -- Never set this value to "*"! Never!
  ---@module 'avante'
  ---@type avante.Config
  opts = {
    provider = 'openrouter',
    providers = {
      openrouter = {
        __inherited_from = 'openai',
        endpoint = 'https://openrouter.ai/api/v1',
        api_key_name = 'OPENROUTER_API_KEY',
        model = 'anthropic/claude-sonnet-4.6',
      },
    },
    input = {
      provider = 'snacks',
      provider_opts = {
        title = 'Avante Input',
        icon = ' ',
      },
    },
    selector = {
      provider = 'snacks',
      provider_opts = {},
    },
    behaviour = {
      allow_access_to_git_ignored_files = 'true',
    },
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    -- optional providers below
    'nvim-mini/mini.pick', -- file_selector provider mini.pick
    'nvim-telescope/telescope.nvim', -- file_selector provider telescope
    'hrsh7th/nvim-cmp', -- autocompletion for avante commands and mentions
    'ibhagwan/fzf-lua', -- file_selector provider fzf
    'folke/snacks.nvim', -- input provider snacks
    'nvim-tree/nvim-web-devicons',
    'zbirenbaum/copilot.lua', -- providers='copilot'
    {
      'HakonHarnes/img-clip.nvim', -- image pasting
      event = 'VeryLazy',
      opts = {
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          use_absolute_path = true, -- required on Windows
        },
      },
    },
    {
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {
        file_types = { 'markdown', 'Avante' },
      },
      ft = { 'markdown', 'Avante' },
    },
  },
}
