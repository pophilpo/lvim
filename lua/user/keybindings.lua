lvim.keys.normal_mode["<C-h>"] = "<C-w>h" -- Move to the left window
lvim.keys.normal_mode["<C-j>"] = "<C-w>j" -- Move to the bottom window
lvim.keys.normal_mode["<C-k>"] = "<C-w>k" -- Move to the top window
lvim.keys.normal_mode["<C-l>"] = "<C-w>l" -- Move to the right window

lvim.builtin.which_key.mappings["m"] = {
  name = "Cargo",
  r = { "<cmd>Dispatch cargo run<cr>", "Run" },
  b = { "<cmd>Dispatch cargo build<cr>", "Build" },
  t = { "<cmd>Dispatch cargo test<cr>", "Test" },
  c = { "<cmd>Dispatch cargo clippy<cr>", "Clippy" },
}



lvim.lsp.buffer_mappings.normal_mode["gr"] = {
  ":lua require'telescope.builtin'.lsp_references()<cr>",
}

lvim.lsp.buffer_mappings.normal_mode["gd"] = {
  ":lua vim.lsp.buf.definition()<cr>",
}

local hop = require('hop')
local directions = require('hop.hint').HintDirection
vim.keymap.set('', 'f', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, { remap = true })
vim.keymap.set('', 'F', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, { remap = true })
vim.keymap.set('', 't', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end, { remap = true })
vim.keymap.set('', 'T', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end, { remap = true })
