-- options
vim.opt.wrap = false
vim.opt.scrolloff = 8

-- keymaps
vim.keymap.set('n', '<C-p>', '<cmd>FZF<cr>')
vim.keymap.set('n', '<C-_>', '<C-^>')

-- fzf
vim.opt.rtp:append('/opt/homebrew/opt/fzf')

-- plugins
vim.pack.add({
  { src = 'https://github.com/rose-pine/neovim', name = 'rose-pine' },
})

-- colorscheme
vim.cmd.colorscheme('rose-pine')

