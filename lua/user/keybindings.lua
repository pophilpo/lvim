local M = {}

M.setup = function()
  -- lv-config.lua

  -- Key mappings for switching windows using CTRL + H/J/K/L
  lvim.keys.normal_mode["<C-h>"] = "<C-w>h" -- Move to the left window
  lvim.keys.normal_mode["<C-j>"] = "<C-w>j" -- Move to the bottom window
  lvim.keys.normal_mode["<C-k>"] = "<C-w>k" -- Move to the top window
  lvim.keys.normal_mode["<C-l>"] = "<C-w>l" -- Move to the right window
end
