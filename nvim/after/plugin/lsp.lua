local bind = function(lhs, rhs)
    vim.keymap.set('n', lhs, rhs)
end

local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({buffer = bufnr})
end)


require('mason').setup()

require('mason-lspconfig').setup({
	ensure_installed = {"clangd", "rust_analyzer"},
	handlers = {
		lsp_zero.default_setup,
	},
})

bind('<F2>', '<cmd>Lspsaga rename ++project<CR>')
bind('K', '<cmd>Lspsaga hover_doc<CR>')
bind('<F4>', '<cmd>Lspsaga code_action<CR>')
bind('<F1>', '<cmd>Lspsaga peek_definition<CR>')
bind(']d', '<cmd>Lspsaga diagnostic_jump_next<CR>')
bind('[d', '<cmd>Lspsaga diagnostic_jump_prev<CR>')
bind('<Leader>ot', '<cmd>Lspsaga term_toggle<CR>')


