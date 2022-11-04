return {
  -- You can disable default plugins as follows:
  -- ["goolord/alpha-nvim"] = { disable = true },
  ["rafamadriz/friendly-snippets"] = { disable = true },
  ["dhruvasagar/vim-table-mode"] = {
    cmd = "TableModeToggle",
    config = function() require "user.plugins.vim-table-mode" end,
  },

  ["hrsh7th/cmp-calc"] = {
    after = "nvim-cmp",
    config = function() require "user.plugins.cmp-calc" end
  },
  ["hrsh7th/cmp-emoji"] = {
    after = "nvim-cmp",
    config = function() require "user.plugins.cmp-emoji" end
  },
  ["hrsh7th/cmp-omni"] = {
    after = "nvim-cmp",
    config = function() require "user.plugins.cmp-omni" end
  },
  ["lukas-reineke/headlines.nvim"] = {
    ft = { "markdown", "rmd", "qmd" },
    config = function() require "user.plugins.headlines" end
  },
  ["onsails/lspkind.nvim"] = {
    config = function() require "user.plugins.lsp-kind" end,
    event = "VimEnter",
  },
  ["machakann/vim-sandwich"] = {},
  ["wellle/targets.vim"] = {
    event = "VimEnter",
  },

  ["nanotee/sqls.nvim"] = { module = "sqls" },

  -- You can also add new plugins here as well:
  -- Add plugins, the packer syntax without the "use"
  ----  { "andweeb/presence.nvim" },
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  ["SirVer/ultisnips"] = {
    event = "InsertEnter",
  },
  ["honza/vim-snippets"] =
  {
    after = "ultisnips"
  },
  ["svermeulen/vim-yoink"] =
  {
    event = "VimEnter"
  },
  ["quangnguyen30192/cmp-nvim-ultisnips"] =
  {
    after = { "nvim-cmp", "ultisnips" }
  },
  ["preservim/vim-markdown"] =
  {
    ft = { "markdown" }
  },
  ["tmux-plugins/vim-tmux"] =
  {
    ft = { "tmux" }
  },
  ["andymass/vim-matchup"] =
  {
    event = "VimEnter"
  },
  ["nvim-zh/whitespace.nvim"] =
  {
    event = "VimEnter"
  },
  ["mileszs/ack.vim"] = {},

  ["nvim-treesitter/nvim-treesitter-textobjects"] = {
    after = "nvim-treesitter"
  },
  ["p00f/clangd_extensions.nvim"] = {
    after = "mason-lspconfig.nvim",
    config = function() require "user.plugins.clangd_extensions" end,
  },

  -- search emoji and other symbols
  ["nvim-telescope/telescope-symbols.nvim"] = {
    after = "telescope.nvim",
  },

  -- Fuzzy finder syntax support
  ["nvim-telescope/telescope-fzf-native.nvim"] = {
    after = "telescope.nvim",
    disable = vim.fn.executable("make") == 0,
    run = "make",
    config = function() require "user.plugins.telescope" end,
  },

  -- We also support a key value style plugin definition similar to NvChad:
  -- ["ray-x/lsp_signature.nvim"] = {
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
