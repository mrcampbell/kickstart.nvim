-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {

  --{
  -- 'm4xshen/hardtime.nvim',
  -- dependencies = { 'MunifTanjim/nui.nvim' },
  -- opts = {
  --  disabled_filetypes = { 'qf', 'netrw', 'NvimTree', 'lazy', 'mason', 'oil' },
  -- max_count = 10,
  -- disabled_keys = {
  -- ['k'] = {},
  -- ['j'] = {},
  -- },
  -- },
  --},
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    config = true,
    opts = {
      contrast = 'hard',
    },
    init = function()
      vim.cmd.colorscheme 'gruvbox'
      vim.cmd.hi 'Comment gui=none'
    end,
  },
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  },
  {
    'nvim-neorg/neorg',
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = '9.1.1', -- Pin Neorg to the latest stable release
    config = {
      load = {
        ['core.defaults'] = {},
        ['core.concealer'] = {},
        ['core.dirman'] = {
          config = {
            workspaces = {
              notes = '~/notes',
            },
          },
        },
      },
    },
  },
}
