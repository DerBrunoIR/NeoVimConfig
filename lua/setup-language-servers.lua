
-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig')['clangd'].setup {}
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
require('lspconfig')['jedi_language_server'].setup { capabilities = capabilities }
-- require('lspconfig')['jdtls'].setup {}
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
require('lspconfig')['vimls'].setup {}
require('lspconfig')['eslint'].setup {}

require('lspconfig')['cmake'].setup {}
require('lspconfig')['autotools_ls'].setup {}
require('lspconfig')['bashls'].setup {}
require('lspconfig')['marksman'].setup {}
require('lspconfig')['dockerls'].setup {}
require('lspconfig')['docker_compose_language_service'].setup {}
-- documentation for ltex at https://valentjn.github.io/ltex/settings.html
require('lspconfig')['ltex'].setup {
	capabilities = capabilities,
	settings = {
		ltex = {
			enabled = {
				'latex', 'markdown', 'bibtex', 'tex',
			},
			--language = "de", for no spell checking
			-- language = "de-DE",
			language = "en-US",
			additionalRules = {
				motherTongue = "de-DE",
			}
		},
	},
}
require('lspconfig')['sqlls'].setup {}
require('lspconfig')['cssls'].setup {}
require('lspconfig')['kotlin_language_server'].setup {}

require('isabelle-lsp').setup({
	isabelle_path = '/home/bruno/.local/share/nvim/mason/packages/isabelle-lsp/bin/isabelle',
})
require('lspconfig')['isabelle'].setup({})
