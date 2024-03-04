require("telescope").setup({
    defaults = {
        mappings = {
            i = {
                ["<esc>"] = require("telescope.actions").close,
            },
            n = {
                ["<esc>"] = require("telescope.actions").close,
            },
        },
        borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
    },
})
