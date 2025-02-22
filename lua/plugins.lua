return {
    --Other
    { "nvim-lua/plenary.nvim",     lazy = true },
    {
        "nvim-tree/nvim-web-devicons",
        lazy = true,
    },
    {
        "github/copilot.vim",
        lazy = true,
        config = function()
            require("configs.copilot")
        end,
        cmd = "Copilot",
    },

    --ColorScheme
    {
        "rebelot/kanagawa.nvim",
        lazy = true,
    },
    {
        "ellisonleao/gruvbox.nvim",
        lazy = true,
    },
    {
        "catppuccin/nvim",
        as = "catppuccin",
        lazy = true,
    },
    {
        "rmehri01/onenord.nvim",
        lazy = true,
    },
    {
        "Shatur/neovim-ayu",
        lazy = true,
    },
    {
        "sainnhe/sonokai",
        lazy = true,
    },
    {
        "EdenEast/nightfox.nvim",
        lazy = true,
    },
    {
        "neanias/everforest-nvim",
        lazy = true,
    },
    {
        "AlexvZyl/nordic.nvim",
        lazy = true,
    },
    { "sis314/darcula-sol-custom", dependencies = "rktjmp/lush.nvim" },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = true
    },

    --UI
    {
        "romgrk/barbar.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            vim.g.barbar_auto_setup = true
            require("ui.barbar")
        end,
        --event = "CursorMoved",
        lazy = true,
    },
    {
        "petertriho/nvim-scrollbar",
        lazy = true,
        config = function()
            require("ui.scrollbar")
        end,
        --event = "CursorMoved",
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("ui.gitsigns")
        end,
        event = "UIEnter",
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        config = function()
            require("ibl").setup({
                indent = {
                    char = "▏",
                },
                scope = {
                    enabled = false,
                    show_start = false,
                    show_end = false,
                },
            })
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        config = function()
            require("ui.lualine")
        end,
        dependencies = { "nvim-web-devicons" },
        event = "UIEnter",
    },

    --Utility
    {
        "ojroques/nvim-bufdel",
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        config = function()
            require("configs.neotree")
        end,
        keys = {
            { "<leader>e", "<cmd>NeoTreeShowToggle<cr>" },
        },
    },
    { "machakann/vim-sandwich", event = "CursorMoved" },
    { "tpope/vim-surround",     event = "CursorMoved" },
    { "tpope/vim-repeat",       event = "CursorMoved" },
    {
        "akinsho/toggleterm.nvim",
        config = function()
            require("configs.toggleterm")
        end,
        cmd = "ToggleTerm",
        keys = { "<F7>", "<cmd>ToggleTerm<cr>" },
    },
    {
        "windwp/nvim-autopairs",
        config = function()
            require("configs.autopairs")
        end,
        event = "InsertEnter",
    },
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("configs.telescope")
        end,
        keys = {
            { "<leader>ff", "<cmd> Telescope find_files<cr>" },
            { "<leader>fg", "<cmd> Telescope live_grep<cr>" },
            { "<leader>fb", "<cmd> Telescope buffers<cr>" },
            { "<leader>fh", "<cmd> Telescope help_tags<cr>" },
            { "<leader>fs", "<cmd> Telescope git_status<cr>" },
            { "<leader>fc", "<cmd> Telescope git_commits<cr>" },
            { "<leader>fr", "<cmd> Telescope oldfiles<cr>" },
        },
    },
    {
        "christoomey/vim-tmux-navigator",
        event = {
            "UIEnter"
        },
    },

    --Each Filetype
    {
        "mrcjkb/haskell-tools.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        branch = "1.x.x",
        config = function()
            require("configs.haskell")
        end,
        ft = "haskell",
    },
    {
        "lervag/vimtex",
        config = function()
            vim.g.latex_latexmk_options = "-pdf -c"
            vim.g.vimtex_view_general_viewer = "SumatraPDF.exe"
            vim.cmd([[
      augroup VimTeX
        autocmd!
        autocmd BufReadPre /path/to/project/*.tex
              \ let b:vimtex_main = '/path/to/project/main.tex'
        augroup END
      ]])
        end,
        ft = "tex",
    },

    --LSP
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
        dependencies = "null-ls.nvim",
        lazy = true,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("configs.mason-lsp")
        end,
        dependencies = { "mason.nvim", "lspkind-nvim" },
        lazy = true,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("configs.lsp")
        end,
        dependencies = { "mason-lspconfig.nvim" },
        cmd = { "LspInfo", "LspInstall", "LspUninstall" },
        event = { "BufReadPost", "BufNewFile" },
    },
    {
        "onsails/lspkind-nvim",
        lazy = true,
    },
    {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
            require("configs.null-ls")
        end,
        dependencies = { "nvim-lua/plenary.nvim" },
        lazy = true,
    },
    {
        "hrsh7th/nvim-cmp",
        config = function()
            require("ui.cmp")
        end,
        lazy = true,
    },
    {
        "hrsh7th/cmp-omni",
        event = "InsertEnter",
    },
    {
        "hrsh7th/cmp-nvim-lsp",
        event = "InsertEnter",
    },
    {
        "hrsh7th/cmp-path",
        dependencies = "nvim-cmp",
        event = "InsertEnter",
    },
    {
        "hrsh7th/cmp-buffer",
        dependencies = "nvim-cmp",
        event = "InsertEnter",
    },
    {
        "hrsh7th/cmp-cmdline",
        dependencies = "nvim-cmp",
        event = "CmdLineEnter",
    },
    {
        "L3MON4D3/LuaSnip",
        event = "InsertEnter",
    },
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("configs.treesitter")
        end,
        event = "UIEnter",
        dependencies = { "norcalli/nvim-colorizer.lua" },
    },
    --Debugger
    {
        "mfussenegger/nvim-dap",
        dependencies = { "rcarriga/nvim-dap-ui", "williamboman/mason.nvim" },
        config = function()
            require("configs.nvim_dap");
        end,
        keys = {
            { "<F5>",  "<cmd>lua require'dap'.continue()<cr>" },
            { "<F10>", "<cmd>lua require'dap'.step_over()<cr>" },
            { "<F11>", "<cmd>lua require'dap'.step_into()<cr>" },
            { "<F9>",  "<cmd>lua require'dap'.toggle_breakpoint()<cr>" },
        },
        lazy = true,
    },
    {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup({ "*" })
        end,
        lazy = true,
    },
}
