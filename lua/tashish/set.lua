vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth= 4
vim.opt.expandtab= true

vim.opt.smartindent = true
vim.cmd('highlight Comment guifg=#CCCCCC')


vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true





-- Set the default terminal size and position
-- vim.cmd([[
--     autocmd VimEnter * execute "belowright terminal ++rows=10"
-- ]])
--
-- -- Toggle terminal visibility with F2 key
-- vim.api.nvim_set_keymap('n', '<F2>', ':lua ToggleTerminal()<CR>', { noremap = true })
--
-- function ToggleTerminal()
--     if vim.bo.buftype == 'terminal' then
--         -- If the current buffer is a terminal, close it
--         vim.cmd('hide')
--     else
--         -- Otherwise, open a new terminal
--         vim.cmd('belowright terminal ++rows=10')
--     end
-- end
