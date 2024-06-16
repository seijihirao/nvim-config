require('Navigator').setup({
    auto_save = 'current',
    disable_on_zoom = true
})

-- Keybindings
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', "<A-Left>", "<CMD>lua require('Navigator').left()<CR>", opts)
map('n', "<A-Up>", "<CMD>lua require('Navigator').up()<CR>", opts)
map('n', "<A-Right>", "<CMD>lua require('Navigator').right()<CR>", opts)
map('n', "<A-Down>", "<CMD>lua require('Navigator').down()<CR>", opts)
map('n', "<A-p>", "<CMD>lua require('Navigator').previous()<CR>", opts)
