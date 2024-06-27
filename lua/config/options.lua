-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.wrap = true
opt.clipboard = "unnamedplus"
opt.ignorecase = true    -- search case insensitive
opt.smartcase = true     -- search matters if capital letter
opt.inccommand = "split" -- "for incsearch while sub

vim.o.sessionoptions =
"blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

local create_cmd = vim.api.nvim_create_user_command

create_cmd("Define", function(opts)
  local cmd = opts.fargs[1]
  create_cmd(cmd, opts.fargs[2], {})
  vim.keymap.set(
    "n",
    "<C-" .. string.sub(cmd, 1, 1) .. ">",
    "<cmd>" .. cmd .. "<cr>",
    { desc = "Run the command defined by 'Define'" }
  )
end, { nargs = '+' })
