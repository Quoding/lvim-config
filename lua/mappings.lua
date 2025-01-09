vim.g.maplocalleader = ","
-- These make line wrapping navigation less painful
vim.keymap.set("n", "<down>", "gj")
vim.keymap.set("n", "<up>", "gk")
vim.keymap.set("v", "<down>", "gj")
vim.keymap.set("v", "<up>", "gk")
-- These disable replace mode
vim.api.nvim_set_keymap('n', 'R', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'r', '<Nop>', { noremap = true, silent = true })



-- lvim.builtin.dap.ui.config.mappings.repl = false
-- lvim.keys.normal_mode["r"] = false
lvim.keys.normal_mode["<S-x>"] = ":BufferKill<CR>"
lvim.keys.normal_mode["<Tab>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-Tab>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.insert_mode["<F2>"] = '<cmd>lua require("renamer").rename()<cr>'

lvim.builtin.which_key.mappings["t"] = {
  name = "+Terminal",
  f = { "<cmd>ToggleTerm<cr>", "Floating terminal" },
  v = { "<cmd>ToggleTerm size=10 direction=vertical<cr>", "Split vertical" },
  h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Split horizontal" },
}

lvim.builtin.which_key.mappings["T"] = {
  name = "Diagnostics",
  -- t = { "<cmd>TroubleToggle<cr>", "trouble" },
  w = { "<cmd>Trouble workspace_diagnostics<cr>", "workspace" },
  d = { "<cmd>Trouble document_diagnostics<cr>", "document" },
  q = { "<cmd>Trouble quickfix<cr>", "quickfix" },
  l = { "<cmd>Trouble loclist<cr>", "loclist" },
  r = { "<cmd>Trouble lsp_references<cr>", "references" },
}

lvim.builtin.which_key.mappings["S"] = {
  name = "Specter",
  s = { "<cmd>lua require('spectre').toggle()<CR>", "Toggle Spectre" },
  p = { "<cmd>lua require('spectre').open_file_search({select_word=true})<CR>", "Search on current file" },
  mode = { "n", "v" }, -- NORMAL and VISUAL mode
  w = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", "Toggle Spectre" },
}

lvim.builtin.which_key.mappings["n"] = {
  name = "Renamer",
  mode = { "n", "v" },
  a = { "<cmd>lua require('renamer').rename()<cr>", "Rename" }
}

lvim.builtin.which_key.mappings["r"] = {
  name = "SnipRun/REPL",
  mode = { "n", "v" },
  r = { "<Plug>SnipRun", "Run Line" },
  b = { "<Plug>SnipReset", "Reset" },
  c = { "<Plug>SnipClose", "Close" },
  -- mode = { "v" },
  -- r = { "<Plug>SnipRun", "Run Block" },
}
