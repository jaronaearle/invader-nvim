vim.cmd [[packadd packer.nvim]]

return require("packer").startup(
    function(use)
        -- Packer can manage itself
        use "wbthomason/packer.nvim"

        -- LSP Zero
        use {
            "VonHeikemen/lsp-zero.nvim",
            branch = "v2.x",
            requires = {
                -- LSP Support
                {"neovim/nvim-lspconfig"}, -- Required
                {
                    -- Optional
                    "williamboman/mason.nvim",
                    run = function()
                        pcall(vim.cmd, "MasonUpdate")
                    end
                },
                {"williamboman/mason-lspconfig.nvim"}, -- Optional
                -- Autocompletion
                {"hrsh7th/nvim-cmp"}, -- Required
                {"hrsh7th/cmp-nvim-lsp"}, -- Required
                {"L3MON4D3/LuaSnip"} -- Required
            }
        }

        -- Prettier
        -- use {
        --     "prettier/vim-prettier",
        --     run = "yarn install --frozen-lockfile --production",
        --     ft = {"javascript", "typescript", "css", "json", "yaml", "html"}
        -- }
        --

        -- Nvim Tree
        use {
            "nvim-tree/nvim-tree.lua",
            requires = {
                "nvim-tree/nvim-web-devicons" -- optional
            }
        }

        -- Treesitter
        use {
            "nvim-treesitter/nvim-treesitter",
            run = ":TSUpdate"
        }

        -- Telescope
        use {
            "nvim-telescope/telescope.nvim",
            tag = "0.1.1"
        }
        -- required for telescope
        use("nvim-lua/plenary.nvim")

        -- Kanagawa Theme
        use "rebelot/kanagawa.nvim"

        -- toggle terminal
        use {
            "akinsho/toggleterm.nvim",
            tag = "*"
        }

        -- formatter
        use {"mhartington/formatter.nvim"}

        -- copilot
        use("zbirenbaum/copilot.lua")

        -- lualine
        use {"nvim-lualine/lualine.nvim"}

        -- toggle comments
        use("numToStr/Comment.nvim")

        -- autoclose tags
        --use("m4xshen/autoclose.nvim")

        -- auto detect indentation
        use("nmac427/guess-indent.nvim")

        -- Show git changes in gutter
        -- use("airblade/vim-gitgutter")

        -- show inline git blame
        use("f-person/git-blame.nvim")

        -- git support in vim
        use("tpope/vim-fugitive")

        -- line for showing open buffers in tabline
        -- use {"akinsho/bufferline.nvim", tag = "*"}

        -- util for closing buffers easily
        -- use {"kazhala/close-buffers.nvim"}

        -- indent blankline
        use("lukas-reineke/indent-blankline.nvim")

        -- undo tree
        use("mbbill/undotree")

        -- command palette
        use "koenverburg/cmd-palette.nvim"

        -- add the dressing plugin for a nicer looking ui as shown in the demo video
        use "stevearc/dressing.nvim"

        -- lsp diagnostics??
        -- use {"folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons"}

        -- These optional plugins should be loaded directly because of a bug in Packer lazy loading
        use "nvim-tree/nvim-web-devicons" -- OPTIONAL: for file icons
        use "lewis6991/gitsigns.nvim" -- OPTIONAL: for git status
        use "romgrk/barbar.nvim"
    end
)
