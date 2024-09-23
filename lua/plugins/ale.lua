return {
	"dense-analysis/ale", -- Linting and formatting, also supports Merlin
	config = function()
		vim.g.ale_linters = { ocaml = { "merlin" } }
		vim.g.ale_fixers = { ocaml = { "ocamlformat" } }
		vim.g.ale_fix_on_save = 1 -- 自动在保存时格式化
	end,
}
