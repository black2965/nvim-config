vim.api.nvim_create_autocmd("FileType", {
  pattern = "haskell",
  command = "setlocal shiftwidth=4 tabstop=4",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "javascript", "typescript", "typescriptreact", "javascriptreact" },
  command = "setlocal shiftwidth=2 tabstop=2",
})
