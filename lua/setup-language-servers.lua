
-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
require('lspconfig')['asm_lsp'].setup { capabilities = capabilities }
require('lspconfig')['clangd'].setup { capabilities = capabilities }
require('lspconfig')['awk_ls'].setup { capabilities = capabilities }
require('lspconfig')['bashls'].setup { capabilities = capabilities }
require('lspconfig')['cmake'].setup { capabilities = capabilities }
require('lspconfig')['cssls'].setup { capabilities = capabilities }
require('lspconfig')['dockerls'].setup { capabilities = capabilities }
require('lspconfig')['eslint'].setup { capabilities = capabilities }
require('lspconfig')['gopls'].setup {
	-- on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		gopls = {
			experimentalPostfixCompletions = true,
			analyses = {
				unusedparams = true,
				shadow = true,
			},
			staticcheck = true,
		},
	},
	init_options = {
		usePlaceholders = true,
	}
}
require('lspconfig')['jsonls'].setup { capabilities = capabilities }
require('lspconfig')['jdtls'].setup { capabilities = capabilities }
require('lspconfig')['tsserver'].setup { capabilities = capabilities }
-- documentation for ltex at https://valentjn.github.io/ltex/settings.html
require('lspconfig')['ltex'].setup {
	capabilities = capabilities,
	settings = {
		ltex = {
			--language = "de", for no spell checking
			language = "de",
			additionalRules = {
				motherTongue = "en",
			}
		},
	},
}
--require('lspconfig')['marksman'].setup { capabilities = capabilities }
require('lspconfig')['pyright'].setup { capabilities = capabilities }
require('lspconfig')['sqlls'].setup { capabilities = capabilities }
require('lspconfig')['rust_analyzer'].setup { capabilities = capabilities }
require('lspconfig')['lua_ls'].setup { capabilities = capabilities }
