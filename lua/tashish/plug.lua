
-- init.lua

-- Specify the plugin directory and initialize vim-plug
vim.cmd [[
    call plug#begin('~/vimfiles/plugged')
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
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
    Plug 'numToStr/Comment.nvim'
    Plug 'nvim-treesitter/nvim-treesitter-context'
    Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
    Plug 'rafamadriz/neon'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'nvim-tree/nvim-web-devicons'
    Plug 'jiangmiao/auto-pairs'
    Plug 'habamax/vim-godot'
    Plug 'klen/nvim-config-local'
    Plug 'ThePrimeagen/harpoon' , {'branch' : 'harpoon2' }
    " Plug 'neoclide/coc.nvim', {'branch': 'release'}
    call plug#end()
]]



vim.cmd [[let &shell = '"C:/Program Files/Git/bin/bash.exe"']]
vim.cmd [[let &shellcmdflag = '-s']]

