return require('packer').startup({
    function(use)
    use { 'mhinz/vim-startify' }
    use { 'DanilaMihailov/beacon.nvim' }

    use { 
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
    }

    use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons',
                opt = true}
    }

    use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
    }

    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable 'make' == 1 }


    use { 'majutsushi/tagbar' }                         -- code structure
    --use { 'Yggdroot/indentLine' }                       -- see indentation
    use { 'tpope/vim-fugitive' }                        -- git integration
    use { 'tpope/vim-rhubarb' }
    use { 'lewis6991/gitsigns.nvim' }
    use { 'junegunn/gv.vim' }                           -- commit history
    use { 'windwp/nvim-autopairs' }
    use { 'lukas-reineke/indent-blankline.nvim' }
    use { 'numToStr/Comment.nvim' }
    use { 'tpope/vim-sleuth' }

    -- lsp config plugins
    use { 
        'neovim/nvim-lspconfig',
        -- auto install lsps to stdpath
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        
        -- status updates for lsp
        'j-hui/fidget.nvim',

        -- additional lua config
        'folke/neodev.nvim',
    }

    -- autocompletion
    use {
        'hrsh7th/nvim-cmp', requires = {
            'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip'
        },
    }

    -- highlight, edit, nav code
    use {
        'nvim-treesitter/nvim-treesitter', 
        run = function()
            pcall(require('nvim-treesitter.install').update { with_sync = true })
        end,
    }

    use {
        'nvim-treesitter/nvim-treesitter-textobjects',
        after = 'nvim-treesitter',
    }



end,
config = {
  package_root = vim.fn.stdpath('config') .. '/site/pack'
    }   
})

