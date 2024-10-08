local default = vim.api.nvim_create_augroup('default', {})

vim.api.nvim_create_autocmd({"BufWritePre"}, {
    group = default,
    pattern = "*",
    command = [[%s/\(\n\+\)\%$/\r/e]],
})
