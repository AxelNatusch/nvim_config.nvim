return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = 'markdown',
  dependencies = {
    -- Required.
    'nvim-lua/plenary.nvim',
  },
  opts = {
    workspaces = {
      {
        name = 'all_notes',
        path = '~/programming/repos/obsidian',
      },
    },
    daily_notes = {
      folder = 'daily',
      template = 'standard_note',
    },
    templates = {
      subdir = 'templates',
      date_format = '%Y-%m-%d-%a',
      time_format = '%H:%M',
    },
    mappings = {
      ['gd'] = {
        action = function()
          return require('obsidian').util.gf_passthrough()
        end,
        opts = { noremap = false, expr = true, buffer = true },
      },
      ['<leader>ch'] = {
        action = function()
          return require('obsidian').util.toggle_checkbox()
        end,
        opts = { buffer = true },
      },
    },
  },
}
