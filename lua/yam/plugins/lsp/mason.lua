return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})
		mason_lspconfig.setup({
			ensure_installed = {
				"vtsls",
				"html",
				"cssls",
				"lua_ls",
				"emmet_ls",
				"pyright",
				"bashls",
				"sqlls",
				"dockerls",
				"yamlls",
			},
		})
		require("mason-lspconfig").setup()
		require("mason-lspconfig").setup_handlers({
			function(server_name) -- default handler (optional)
				if server_name == "tsserver" then
					server_name = "ts_ls"
				end
				local capabilities = require("cmp_nvim_lsp").default_capabilities()
				require("lspconfig")[server_name].setup({
					capabilities = capabilities,
				})
			end,
		})
		mason_tool_installer.setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"isort",
				"black",
				"pylint",
				"eslint_d",
			},
		})
	end,
}
