
-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig')['asm_lsp'].setup { capabilities = capabilities }
require('lspconfig')['clangd'].setup { capabilities = capabilities }
require('lspconfig')['gopls'].setup {
	capabilities = capabilities,
	settings = {
		cmd = {'gopls', '--remote=auto'},
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
require('lspconfig')['jdtls'].setup { capabilities = capabilities }
require('lspconfig')['pyright'].setup { capabilities = capabilities }
require('lspconfig')['rust_analyzer'].setup { capabilities = capabilities }
require('lspconfig')['lua_ls'].setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using
        -- (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {
          'vim',
          'require'
        },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
require('lspconfig')['vimls'].setup { capabilities = capabilities }
require('lspconfig')['eslint'].setup { capabilities = capabilities }

require('lspconfig')['cmake'].setup { capabilities = capabilities }
require('lspconfig')['autotools_ls'].setup { capabilities = capabilities }
require('lspconfig')['bashls'].setup { capabilities = capabilities }
require('lspconfig')['marksman'].setup { capabilities = capabilities }
require('lspconfig')['dockerls'].setup { capabilities = capabilities }
require('lspconfig')['docker_compose_language_service'].setup { capabilities = capabilities }
-- documentation for ltex at https://valentjn.github.io/ltex/settings.html
require('lspconfig')['ltex'].setup {
	capabilities = capabilities,
	settings = {
		ltex = {
			enabled = {
				'latex', 'markdown', 'bibtex', 'tex',
			},
			--language = "de", for no spell checking
			language = "de",
			additionalRules = {
				motherTongue = "en",
			}
		},
	},
}
require('lspconfig')['sqlls'].setup { capabilities = capabilities }
require('lspconfig')['cssls'].setup { capabilities = capabilities }
