local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
local default = augroup('default', {})

autocmd({"BufWritePre"}, {
    group = default,
    pattern = "*",
    command = [[%s/\(\n\+\)\%$/\r/e]],
})
