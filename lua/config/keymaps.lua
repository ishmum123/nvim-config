-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map({ "n", "v" }, "f", function()
  require("flash").jump()
end, { desc = "Flash" })

map("n", "<S-u>", "<cmd>redo<cr>", { desc = "Redo last undo" })
map("n", "<C-q>", "<cmd>only<cr><cmd>exit<cr>", { desc = "Exit" })
map("n", "m", "<cmd>messages<cr>", { desc = "Show messages" })
map(
  "n",
  "<C-r>",
  "<cmd>Run<cr>",
  { desc = "Run the command defined by 'Rdef'" }
)
map(
  "n",
  "<leader><esc>",
  "<cmd>Neotree close<cr><cmd>only<cr>",
  { desc = "Close other windows" }
)
