local nvim_tree = require("nvim-tree")

vim.keymap.set('n', '<leader>e', ':NvimTreeOpen<CR>')
vim.keymap.set('n', '<A-e>', ':NvimTreeOpen<CR>')
nvim_tree.setup()
