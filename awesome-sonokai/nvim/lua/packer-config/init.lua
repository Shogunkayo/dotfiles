return require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'ellisonleao/gruvbox.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use 'nvim-tree/nvim-tree.lua'
    use 'rcarriga/nvim-notify'
    use 'nvim-lualine/lualine.nvim'
    use 'ThePrimeagen/harpoon'
    use 'mbbill/undotree'
    use 'ellisonleao/glow.nvim'
    use 'shaunsingh/nord.nvim'
    use({ 'rose-pine/neovim', as = 'rose-pine'}) 
    use "rebelot/kanagawa.nvim"
    use 'rktjmp/lush.nvim'
    use {
        "mcchrish/zenbones.nvim",
        -- Optionally install Lush. Allows for more configuration or extending the colorscheme
        -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
        -- In Vim, compat mode is turned on as Lush only works in Neovim.
        requires = "rktjmp/lush.nvim"
    }
    use {'nyoom-engineering/oxocarbon.nvim'}
    use 'sainnhe/sonokai'
    use 'sainnhe/everforest'
    use "EdenEast/nightfox.nvim"

    use 'SirVer/ultisnips'
    use 'mlaursen/vim-react-snippets'
    use 'windwp/nvim-ts-autotag'
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
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

    use({
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	tag = "v1.2.1.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!:).
	run = "make install_jsregexp"
    })
    use "rafamadriz/friendly-snippets"


    -- Tmux
    use "christoomey/vim-tmux-navigator"
end)

