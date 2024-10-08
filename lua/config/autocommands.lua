local default = vim.api.nivm_create_augroup('default', {})

vim.api.vim_create_autocmd({"BufWritePre"}, {
    group = default,
    pattern = "*",
    command = [[%s/\(\n\+\)\%$/\r/e]],
})
