lvim.plugins = {
  {
    "JuliaEditorSupport/julia-vim"
  },
  {
    "ggandor/leap.nvim",
    name = "leap",
    config = function()
      require("leap").add_default_mappings()
    end,
  },
  {
    "kevinhwang91/nvim-bqf",
    event = { "BufRead", "BufNew" },
    config = function()
      require("bqf").setup({
        auto_enable = true,
        preview = {
          win_height = 12,
          win_vheight = 12,
          delay_syntax = 80,
          border_chars = { "┃", "┃", "━", "━", "┏", "┓", "┗", "┛", "█" },
        },
        func_map = {
          vsplit = "",
          ptogglemode = "z,",
          stoggleup = "",
        },
        filter = {
          fzf = {
            action_for = { ["ctrl-s"] = "split" },
            extra_opts = { "--bind", "ctrl-o:toggle-all", "--prompt", "> " },
          },
        },
      })
    end,
  },
  {
    "mrjones2014/nvim-ts-rainbow",
  },
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },
  {
    "karb94/neoscroll.nvim",
    event = "WinScrolled",
    config = function()
      require('neoscroll').setup({
        -- All these keys will be mapped to their corresponding default scrolling animation
        mappings = { '<C-u>', '<C-d>', '<C-b>', '<C-f>',
          '<C-y>', '<C-e>', 'zt', 'zz', 'zb' },
        hide_cursor = true,          -- Hide cursor while scrolling
        stop_eof = true,             -- Stop at <EOF> when scrolling downwards
        use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
        respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
        cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
        easing_function = nil,       -- Default easing function
        pre_hook = nil,              -- Function to run before the scrolling animation starts
        post_hook = nil,             -- Function to run after the scrolling animation ends
      })
    end
  },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "mfussenegger/nvim-dap", "mfussenegger/nvim-dap-python", --optional
      { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
    },
    lazy = false,
    branch = "regexp", -- This is the regexp branch, use this for the new version
    config = function()
      require("venv-selector").setup()
    end,
    keys = {
      { ",v", "<cmd>VenvSelect<cr>" },
    },
  },
  { "nvim-lua/plenary.nvim" },
  { "nvim-pack/nvim-spectre" },
  {
    "filipdutescu/renamer.nvim",
    config = function()
      require("renamer").setup()
    end,
    {
      "michaelb/sniprun",
      branch = "master",

      build = "sh install.sh",
      -- do 'sh install.sh 1' if you want to force compile locally
      -- (instead of fetching a binary from the github release). Requires Rust >= 1.65

      config = function()
        require("sniprun").setup({
          -- your options
        })
      end,
    },
  },
  {
    "lervag/vimtex",
    ft = "tex",
    init = function()
      vim.g.vimtex_view_method = 'sioyek'
      vim.g.vimtex_quickfix_mode = 0
      vim.opt.conceallevel = 2
      vim.g.vimtex_complete_bib_simple = 1
      vim.g.maplocalleader = ","
    end
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "macchiato",
    },
  },
}
