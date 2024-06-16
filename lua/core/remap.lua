local map = vim.keymap.set

vim.g.mapleader = " "

-- Split panes
map("n", "<leader>%", "<C-w>v", { desc = "Split pane vertivally" })
map("n", "<leader>\"", "<C-w>h", { desc = "Split pane horizontally" })

-- Move highlighted text
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move highlighted tect down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move highlighted tect up" })

-- Keeps cursor static
map("n", "J", "mzJ`z", { desc = "Append next line to current end" })

-- Keeps cursor on middle
map("n", "<C-d>", "<C-d>zz", { desc = "Page Down" })
map("n", "<C-u>", "<C-u>zz", { desc = "Page Up" })
map("n", "n", "nzzzv", { desc = "Next search" })
map("n", "N", "Nzzzv", { desc = "Previous search" })

-- Diables Q default binding
map("n", "Q", "<nop>")

-- Format file
map("n", "<leader>f", vim.lsp.buf.format, { desc = "Formats file" })

-- Reloads nvim file
map("n", "<leader><leader>", function()
  vim.cmd("so")
end, { desc = "Reloads nvim file" })
