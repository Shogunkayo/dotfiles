return require('packer').startup(function()

    use 'wbthomason/packer.nvim'
    use 'ellisonleao/gruvbox.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use 'nvim-tree/nvim-tree.lua'
    use 'rcarriga/nvim-notify'
    use 'nvim-lualine/lualine.nvim'
    use 'ThePrimeagen/harpoon'
    use 'mbbill/undotree'

    -- LSP plugins
    --use 'neovim/nvim-lspconfig'
    --use 'hrsh7th/nvim-cmp'
    --use 'hrsh7th/cmp-nvim-lsp'
    --use 'saadparwaiz1/cmp_luasnip'
    --use 'L3MON4D3/LuaSnip'

    use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }

    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-treesitter/playground'

    use "nvim-lua/plenary.nvim"
    use 'nvim-telescope/telescope.nvim'

    use 'tpope/vim-fugitive'    

end)
