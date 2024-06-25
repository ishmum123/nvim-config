-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map({ "n", "v" }, "f", function()
  require("flash").jump()
end, { desc = "Flash" })

map("n", "<C-q>", "<cmd>qa<cr>", { desc = "Exit" })
map(
  "n",
  "<leader><esc>",
  "<cmd>Neotree close<cr><cmd>only<cr>",
  { desc = "Exit" }
)
