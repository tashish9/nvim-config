require 'nvim-treesitter.install'.prefer_git = false

require 'nvim-treesitter.install'.compilers = { "clang" ,  "gcc" }

 require'nvim-treesitter.configs'.setup {
    ensure_installed = { 'c' , 'lua' , 'vim' , 'javascript' , 'typescript' , 'prisma' , 'go' },
     sync_install = true ,
     auto_install = false,
     highlight = {
         enable = true,
     },
}
