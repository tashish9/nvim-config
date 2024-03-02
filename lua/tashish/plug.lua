
-- init.lua

-- Specify the plugin directory and initialize vim-plug
vim.cmd [[
    call plug#begin('~/vimfiles/plugged')
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'olivercederborg/poimandres.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-nvim-lua'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v3.x'}
    Plug 'williamboman/mason.nvim'
    Plug 'williamboman/mason-lspconfig.nvim'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'rafamadriz/friendly-snippets'
    Plug 'dense-analysis/ale'
    Plug 'tpope/vim-fugitive'
    Plug 'ThePrimeagen/harpoon'
    Plug 'numToStr/Comment.nvim'
    Plug 'nvim-treesitter/nvim-treesitter-context'
    call plug#end()
]]



-- require("toggleterm").setup {
-- 	size = 10,
-- 	open_mapping = [[<C-\>]],
-- 	start_in_insert = true,
-- 	direction = "float",
-- 	shell = "pwsh.exe",
-- 	float_opts = {
-- 		border = "curved",
-- 		width = math.ceil(vim.o.columns*0.8),
-- 		height = math.ceil(vim.o.columns*0.2)
-- 	}
-- }
--
--
-- vim.cmd [[
--   augroup MyToggleTermDebug
--     autocmd!
--     autocmd TermOpen * echom 'Terminal opened'
--     autocmd TermClose * echom 'Terminal closed'
--   augroup END
-- ]]
--

-- Automatically run :PlugInstall on startup
vim.cmd [[
    if empty(glob('~/vimfiles/plugged'))
        silent !mkdir -p ~/.config/nvim/plugged
        execute '!git clone https://github.com/junegunn/vim-plug ~/.config/nvim/plugged/vim-plug'
        autocmd VimEnter * PlugInstall
    endif
]]
