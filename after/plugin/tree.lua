local nvim_tree = require("nvim-tree")

vim.keymap.set('n', '<leader>e', ':NvimTreeOpen<CR>')
nvim_tree.setup()
