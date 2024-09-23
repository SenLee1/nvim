require("configs.basic")
require("configs.markdown")
require("configs.nerdcommenter")
require("configs.nerdtree")

require("configs.tex")
require("run_debug.python")
require("run_debug.c")
require("run_debug.cpp")
-- require("lsp.nvimcmp")
-- require("lsp.cmpnvimlsp")
-- require("lsp.nvimlspconfig")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
-- colorscheme tokyonight-night  -storm   -day   -moon
require("lazy").setup({
	{ import = "plugins_lsp_cmp" },
	{ import = "plugins" },
	{ import = "plugins_common" },
	{ import = "plugins_md" },
	{ import = "plugins_tex" },
	{ "mhartington/formatter.nvim", config = true },
})
-- require('lspconfig').pyright.setup{
-- cmd = { 'pyright-langserver', '--stdio' },
-- }
vim.cmd([[colorscheme tokyonight]])
-- 设置 lspconfig 使其自动补全功能与 nvim-cmp 集成
local capabilities = require("cmp_nvim_lsp").default_capabilities()
-- require('lspconfig').clangd.setup {
--   capabilities = capabilities,
-- }
-- vim.api.nvim_set_keymap('n', '<leader>f', '<cmd>Prettier<CR>', { noremap = true, silent = true })
-- require('lspconfig').pyright.setup {
--   capabilities = capabilities,
-- }
require("lsp-format").setup({})

local on_attach = function(client, bufnr)
	require("lsp-format").on_attach(client, bufnr)

	-- ... custom code ...
end
require("lspconfig").gopls.setup({ on_attach = on_attach })
