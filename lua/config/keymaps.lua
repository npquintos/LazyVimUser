-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- This file is automatically loaded by lazyvim.config.init

-- DO NOT USE `LazyVim.safe_keymap_set` IN YOUR OWN CONFIG!!
-- use `vim.keymap.set` instead
-- local map = LazyVim.safe_keymap_set
local lspconfig = require('lspconfig')

lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      runtime = {
        diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = {
            'vim',
            'require'
            },
        },
      },
    },
  },
}



-- buffers
vim.keymap.set("n", "<A-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<A-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })

vim.keymap.set("n", "<leader>w", "<cmd>lopen<cr>", { desc = "Location List" })
vim.keymap.set("n", "<leader>q", "<cmd>copen<cr>", { desc = "Quickfix List" })

vim.keymap.set("n", "qp", vim.cmd.cprev, { desc = "Previous Quickfix" })
vim.keymap.set("n", "qn", vim.cmd.cnext, { desc = "Next Quickfix" })

vim.keymap.set("n", "<right>", ":let linenum=getpos('.')[1]|:wincmd l|:call cursor(linenum,0)<cr>", { desc = "go to same line number at right pane" })
vim.keymap.set("n", "<left>", ":let linenum=getpos('.')[1]|:wincmd h|:call cursor(linenum,0)<cr>", { desc = "go to same line number at left pane" })
vim.keymap.set("n", "<up>", ":let linenum=getpos('.')[1]|:wincmd k|:call cursor(linenum,0)<cr>", { desc = "go to same line number at upper pane" })
vim.keymap.set("n", "<down>", ":let linenum=getpos('.')[1]|:wincmd j|:call cursor(linenum,0)<cr>", { desc = "go to same line number at lower pane" })
vim.keymap.set("n", "o", "%", { desc = "jump to opening/closing pair" })
vim.keymap.set("n", "T", "zt", { desc = "move current line to top" })
vim.keymap.set("n", "E", "$", { desc = "move cursor to end of line" })
vim.keymap.set("n", "B", "^", { desc = "move cursor to beginning of line" })
vim.keymap.set("n", "P", "]pcf=def<esc>A:<cr>", { desc = "convert to function def" })
vim.keymap.set("n", "gf", "?^def <cr>w", { desc = "go to start of function" })
vim.keymap.set("n", "gb", "?^def <cr>w*", { desc = "go to calling function" })
vim.keymap.set("n", "<Leader>Z", ":tab split<CR>", { desc = "zoom into current pane" })
vim.keymap.set("n", "<Leader>z", "mAZZ'A<ESC>T", { desc = "un-zoom" })

