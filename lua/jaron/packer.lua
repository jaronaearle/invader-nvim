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
        -- session mananager
        use {
            "rmagatti/auto-session",
            config = function()
                require("auto-session").setup {
                    log_level = "error",
                    auto_session_suppress_dirs = {"~/", "~/Projects", "~/Downloads", "/"}
                }
            end
        }
        -- tmux
        use {"christoomey/vim-tmux-navigator"}
        --    -- Debugger -- TODO config debugger
        use {"mfussenegger/nvim-dap"}
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
        use("m4xshen/autoclose.nvim")
        -- auto detect indentation
        use("nmac427/guess-indent.nvim")
        -- show inline git blame
        use("f-person/git-blame.nvim")
        -- indent blankline
        use("lukas-reineke/indent-blankline.nvim")
        -- undo tree
        use("mbbill/undotree")
        -- add the dressing plugin for a nicer looking ui as shown in the demo video
        use "stevearc/dressing.nvim"
        -- These optional plugins should be loaded directly because of a bug in Packer lazy loading
        use "nvim-tree/nvim-web-devicons" -- OPTIONAL: for file icons
        use "lewis6991/gitsigns.nvim" -- OPTIONAL: for git status
        use "romgrk/barbar.nvim"
        -- whichkey
        use {
            "folke/which-key.nvim",
            config = function()
                vim.o.timeout = true
                vim.o.timeoutlen = 300
            end
        }
        -- context aware hover
        use {"lewis6991/hover.nvim"}
        -- nvim test runner
        use {
            "klen/nvim-test",
            config = function()
                require("nvim-test").setup()
            end
        }
        use {
            "cameron-wags/rainbow_csv.nvim",
            config = function()
                require "rainbow_csv".setup()
            end,
            -- optional lazy-loading below
            module = {
                "rainbow_csv",
                "rainbow_csv.fns"
            },
            ft = {
                "csv",
                "tsv",
                "csv_semicolon",
                "csv_whitespace",
                "csv_pipe",
                "rfc_csv",
                "rfc_semicolon"
            }
        }
    end
)
