vim.keymap.set('n', "<F7>", ":ToggleTerm direction=horizontal<CR>", { silent = true })
vim.keymap.set('t', "<F7>", "<C-\\><C-n>:ToggleTerm direction=horizontal<CR>", { silent = true })

return {
    'akinsho/toggleterm.nvim',
    config = true
}
