vim.g.mapleader = " "
vim.keymap.set("n" , "<leader>e" , vim.cmd.Ex)
vim.keymap.set("n" , "-" , vim.cmd.Ex)
vim.api.nvim_set_keymap('n' , '<leader>P' , '"+p' , {})

-- vim.api.nvim_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

vim.api.nvim_set_keymap("n" , "<leader>v" , ":vsp<CR>" , { noremap = true , silent = true })
vim.api.nvim_set_keymap("n" , "<C-s>" , ":w!<CR>" , { noremap = true , silent = true })
vim.api.nvim_set_keymap("i" , "<C-s>" , "<Esc>:w!<CR>" , { noremap = true , silent = true })
vim.api.nvim_set_keymap('n', '<leader><CR>', ':rightbelow vsp $MYVIMRC<CR>', { noremap = true, silent = true })
vim.keymap.set('x' , '<leader>y' , '"+yy' , { noremap = true , silent = true })


-- Alternative to Alt up down of vs code , but JK instead of up down , NICE!
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<C-e>', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)
vim.keymap.set("n" , "dl" , "d$")


vim.keymap.set("x", "p", [["_dP]])

vim.keymap.set("n" , "<C-d>" , "<C-d>zz");

vim.keymap.set("n" , "<C-u>" , "<C-u>zz");

vim.keymap.set('n', '[', ':bp<CR>')
vim.keymap.set('n', ']', ':bn<CR>')

vim.keymap.set('t', '<C-q>', [[<C-\><C-n>:bd!<CR>]])

  vim.keymap.set('t', '<C-h>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<esc>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<C-h>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<esc>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

