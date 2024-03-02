-- Configure ALE linters explicitly
vim.g.ale_linters_explicit = 1

vim.g.ale_fixers = {
    javascript = {'prettier', 'eslint'},
    typescript = {'prettier', 'eslint'},
    typescriptreact = {'prettier', 'eslint'},
    javascriptreact = {'prettier', 'eslint'},
    json = {'prettier'},
    yaml = {'prettier'},
    html = {'prettier'},
    css = {'prettier'},
    scss = {'prettier'},
    markdown = {'prettier'},
    go = {'gofmt'},
    lua = {'stylua'},
}


vim.g.ale_linters = {
    javascript = {'eslint'},
    typescript = { 'tsserver' , 'eslint'},
    typescriptreact = {'eslint'},
    javascriptreact = {'eslint'},
    json = {'jsonlint'},
    yaml = {'yamllint'},
    html = {'tidy'},
    css = {'stylelint'},
    scss = {'stylelint'},
    markdown = {'markdownlint'},
    lua = {'luacheck'},
    go = {'golint'},
}


vim.g.ale_fix_on_save = 1
vim.g.ale_debug = 1
