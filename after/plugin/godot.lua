godot_executable = 'C:/Users/prish.LAPTOP-6E35URAC/Downloads/Godot_v4.2.1-stable_win64.exe'

-- Enable ALE auto completion globally
vim.api.nvim_set_var('ale_completion_enabled', 1)

-- Allow ALE to autoimport completion entries from LSP servers
vim.api.nvim_set_var('ale_completion_autoimport', 1)

-- Register LSP server for Godot:
vim.cmd([[
  call ale#linter#Define('gdscript', {
    \ 'name': 'godot',
    \ 'lsp': 'socket',
    \ 'address': '127.0.0.1:6008',
    \ 'project_root': 'project.godot',
    \})
]])

