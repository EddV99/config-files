-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    -- tokyonight colorscheme
    use {
        "folke/tokyonight.nvim",
        as = 'tokyonight',
    }
    -- papercolor colorscheme
    use "NLKNguyen/papercolor-theme"

    -- catppuccin colorscheme
    use { "catppuccin/nvim", as = "catppuccin" }

    -- one dark colorscheme
    use 'navarasu/onedark.nvim'

    -- Treesitter
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    -- Harpoon
    use('ThePrimeagen/harpoon')

    -- Fugative (git interface)
    use('tpope/vim-fugitive')

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }
    -- Status Line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- Better lsp
    use({
        'nvimdev/lspsaga.nvim',
        after = 'nvim-lspconfig',
        config = function()
            require('lspsaga').setup({
                ui = { code_action = '󰏉' }
            })
        end,
    })

    -- Rust
    use 'simrat39/rust-tools.nvim'

    -- Startup screen
    use {
        "startup-nvim/startup.nvim",
        requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
        --config = function()
        --    require("startup").setup(require("eddneo.customstartup"))
        --end
    }

    -- Debugger
     use 'mfussenegger/nvim-dap'
     use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
     use { 'theHamsta/nvim-dap-virtual-text', requires = { "mfussenegger/nvim-dap" } }
end)
