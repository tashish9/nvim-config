vim.g.mapleader = " "
vim.keymap.set("n" , "<leader>e" , vim.cmd.Ex)
vim.keymap.set("n" , "-" , vim.cmd.Ex)
vim.api.nvim_set_keymap('n' , '<leader>P' , '"+p' , {})

-- vim.api.nvim_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

vim.keymap.set( "n" , "<leader>v" , vim.cmd.Vex)
vim.api.nvim_set_keymap("n" , "<C-s>" , ":w!<CR>" , { noremap = true , silent = true })
vim.api.nvim_set_keymap("i" , "<C-s>" , "<Esc>:w!<CR>" , { noremap = true , silent = true })
vim.api.nvim_set_keymap('n', '<leader><CR>', ':rightbelow vsp $MYVIMRC<CR>', { noremap = true, silent = true })
vim.keymap.set('x' , '<leader>c' , '"+yy' , { noremap = true , silent = true })


-- Alternative to Alt up down of vs code , but JK instead of up down , NICE!
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<C-e>', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)
vim.keymap.set("n" , "dl" , "d$")



vim.api.nvim_set_keymap('n', 'tt', ':sp<bar>term<CR><C-w>J:resize10<CR>', {noremap = true})


vim.keymap.set("x", "p", [["_dP]])

vim.keymap.set("n" , "<C-d>" , "<C-d>zz");

vim.keymap.set("n" , "<C-u>" , "<C-u>zz");
