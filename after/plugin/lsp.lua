local lsp_zero = require('lsp-zero')
local util = require('lspconfig.util')

lsp_zero.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)

  vim.keymap.set("n", "<leader>h", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>i", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>r", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
      vim.keymap.set('n', '<leader>fr', vim.lsp.buf.references, opts)
end)


require('mason').setup({})

require('mason-lspconfig').setup({
  ensure_installed = {'lua_ls' , 'tsserver' , 'eslint' , 'gopls' ,'prismals'},
  handlers = {
    lsp_zero.default_setup,
    gopls = function ()
        require'lspconfig'.gopls.setup {
            root_dir = function(fname)
                local mod_cache = vim.trim(vim.fn.system 'go env GOMODCACHE')
                if fname:sub(1, #mod_cache) == mod_cache then
                    local clients = vim.lsp.get_active_clients { name = 'gopls' }
                    if #clients > 0 then
                       return clients[#clients].config.root_dir
                    end
                end
                return util.root_pattern 'go.work'(fname) or util.root_pattern('go.mod', '.git')(fname)
            end,
        }
    end,
  },
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}


cmp.setup({
  sources = {
    {name = 'path'},
    {name = 'nvim_lsp'},
    {name = 'nvim_lua'},
    {name = 'luasnip', keyword_length = 2},
    {name = 'buffer', keyword_length = 3},
  },
    sorting = {
    priority_weight = 2, -- Weight for priority. Higher value means higher priority.
    comparators = {
        cmp.config.compare.score, -- Compare based on the score from the LSP
        cmp.config.compare.exact, -- Compare exact matches first
        cmp.config.compare.kind, -- Compare based on the kind of completion item
      cmp.config.compare.offset, -- Compare based on the offset in the document
      cmp.config.compare.sort_text, -- Compare based on the sort text of completion item
      cmp.config.compare.length, -- Compare based on the length of completion item
      cmp.config.compare.order, -- Compare based on the order of completion items
    }
  },

  formatting = lsp_zero.cmp_format(),
  mapping = cmp.mapping.preset.insert({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-l>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
})


