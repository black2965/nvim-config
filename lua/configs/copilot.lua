vim.cmd("let g:copilot_enabled = 0")
-- Force disable everywhere
vim.api.nvim_create_autocmd({ 'BufEnter' }, {
    pattern = '*',
    command = "Copilot disable"
})

-- Force enable ~/dev/*
--vim.api.nvim_create_autocmd({ 'BufEnter' }, {
--    pattern = vim.fn.expand('~') .. '/dev/*',
--    command = "Copilot enable"
--})
