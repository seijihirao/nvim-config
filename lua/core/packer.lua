-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    --
    -- Themes
    --
    use { "catppuccin/nvim", as = "catppuccin" }

    use {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {
                config = {
                    week_header = {
                        enable = true
                    }
                }
            }
        end,
        requires = {'nvim-tree/nvim-web-devicons'}
    }

    --
    -- Filesystem helpers
    --
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        'nvim-tree/nvim-tree.lua',
        tag = 'v1.4.0',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
    }

    --
    -- Windows
    --
    use {
      'numToStr/Navigator.nvim'
    }

    --
    -- Bufers
    --
    use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
    use 'romgrk/barbar.nvim'

    --
    -- Coding 
    --
    use ('nvim-treesitter/nvim-treesitter', {run=':TSUpdate'})

    use ('mbbill/undotree')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            {'neovim/nvim-lspconfig'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }

    --
    -- Git
    --
    use ('tpope/vim-fugitive')

end)
