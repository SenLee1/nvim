vim.api.nvim_create_autocmd("FileType", {
	pattern = "c",
	callback = function()
		vim.api.nvim_buf_set_keymap(
			0,
			"n",
			"<F7>",
			"<ESC>:w<CR>:split<CR>:te gcc -std=c11 -Wshadow -Wall -o %:t:r.out % -g  && %:t:r.out<CR>i",
			{ silent = true, noremap = true }
		)
	end,
})
