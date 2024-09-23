
-- Define AutoPairs for a specific filetype
vim.api.nvim_create_autocmd('FileType', {
    pattern = 'FILETYPE',
    callback = function()
        vim.b.AutoPairs = { ["("] = ")" }
    end
})

-- Define AutoPairs for php filetype
vim.api.nvim_create_autocmd('FileType', {
    pattern = 'php',
    callback = function()
        vim.b.AutoPairs = { ['<?'] = '?>', ['<?php'] = '?>' }
    end
})
