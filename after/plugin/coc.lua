-- Formatting file
vim.keymap.set('x', '<leader>f', ':call CocAction("format")<CR>')
vim.keymap.set('n', '<leader>f', ':call CocAction("format")<CR>')

-- Use <c-space> to trigger completion
vim.keymap.set("i", "<d-space>", "coc#refresh()", { silent = true, expr = true })

-- GoTo code navigation
vim.keymap.set("n", "<leader>gd", "<Plug>(coc-definition)", {silent = true})
vim.keymap.set("n", "<leader>gy", "<Plug>(coc-type-definition)", {silent = true})
vim.keymap.set("n", "<leader>gi", "<Plug>(coc-implementation)", {silent = true})
vim.keymap.set("n", "<leader>gr", "<Plug>(coc-references)", {silent = true})

-- Use K to show documentation in preview window
function _G.show_docs()
    local cw = vim.fn.expand('<cword>')
    if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
        vim.api.nvim_command('h ' .. cw)
    elseif vim.api.nvim_eval('coc#rpc#ready()') then
        vim.fn.CocActionAsync('doHover')
    else
        vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
    end
end
vim.keymap.set("n", "K", '<CMD>lua _G.show_docs()<CR>', {silent = true})

-- Highlight the symbol and its references on a CursorHold event(cursor is idle)
vim.api.nvim_create_augroup("CocGroup", {})
vim.api.nvim_create_autocmd("CursorHold", {
    group = "CocGroup",
    command = "silent call CocActionAsync('highlight')",
    desc = "Highlight symbol under cursor on CursorHold"
})

-- Symbol renaming
vim.keymap.set("n", "<leader>rn", "<Plug>(coc-rename)", {silent = true})

-- <CR> to trigger completion
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
vim.keymap.set("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)
