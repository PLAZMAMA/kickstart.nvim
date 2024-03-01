return {
  'Exafunction/codeium.vim',
  event = 'BufEnter',
  config = function()
    vim.g.codeium_disable_bindings = 1
    vim.keymap.set('i', '<C-a>', function() return vim.fn['codeium#Accept']() end, { expr = true })
    vim.keymap.set('i', '<M-]>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
    vim.keymap.set('i', '<M-[>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
    vim.keymap.set('i', '<M-c>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
    vim.keymap.set('n', '<leader>ma', function() vim.g.codeium_enabled = true end, { expr = true, silent = true })
    vim.keymap.set('n', '<leader>md', function() vim.g.codeium_enabled = false end, { expr = true, silent = true })
 end,
}
