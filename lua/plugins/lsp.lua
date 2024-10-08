return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
    	"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		local mason = require("mason")
		local masonLspConfig = require("mason-lspconfig")

		mason.setup()
		masonLspConfig.setup()

		masonLspConfig.setup_handlers {
        		function (server_name)
            			require("lspconfig")[server_name].setup {}
        		end,
    		}
	end,
}
