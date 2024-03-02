 require'nvim-treesitter.configs'.setup {
    ensure_installed = { 'c' , 'lua' , 'vim' , 'javascript' , 'typescript' , 'prisma' , 'go' },
     sync_install = true ,
     auto_install = true,
     highlight = {
         enable = true,
     },
}
