return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = {"lua", "vim", "vimdoc"},
            auto_install = true,
            sync_install = false,    -- Install parsers asynchronously
            highlight = {
                enable = true,        -- Enable syntax highlighting
            },
            indent = {
                enable = true,        -- Enable indentation based on treesitter
            },
        })
    end
}

