require('neal.options')
require('neal.keymaps')
require('neal.plugins')
require('neal.cmp')
require('neal.lsp')
require('neal.telescope')
require('neal.treesitter')
require('neal.autopairs')
require('neal.comment')
require('neal.gitsigns')
require('neal.toggleterm')
require('neal.feline')
vim.cmd "colorscheme tokyonight"
vim.cmd "set guicursor+=n-i:hor20-Cursor/lCursor"
require'nvim-tree'.setup{}
