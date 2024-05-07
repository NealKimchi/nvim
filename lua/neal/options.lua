-- Do --help options for full list
vim.opt.number = true		        --adds line numbers
--vim.opt.relativenumber = true		--adds relative line numbers	
vim.opt.ruler = true		        --always shows cursor position
vim.opt.cursorline = true               --shows which line cursor is on
vim.opt.autoindent = true		--indents to last paragraph
vim.opt.expandtab = true		--converts tab to spaces
vim.opt.shiftwidth = 4		        --indent length is 4 spaces
vim.opt.shiftround = true		--newlines are tabbed correctly
vim.opt.smarttab = true                 --tabs the correct way
vim.opt.backup = false                  --creates a backup file
vim.opt.clipboard = "unnamedplus"       --neovim can access system clipboard
vim.opt.cmdheight = 2                   --more space for neovim command line
vim.opt.fileencoding = "utf-8"          --file encoding
vim.opt.ignorecase = true               --ignore case in search patterns
vim.opt.mouse = "a"                     --allows mouse to be used in nvim
vim.opt.showtabline = 2                 --always show tabline
vim.opt.smartcase = true                --smartcase
vim.opt.timeoutlen = 1000               --time to wait for mapped sequence(in milliseconds)
vim.opt.undofile = true                 --persistent undo
vim.opt.updatetime = 300                --faster completion
vim.opt.writebackup = false             --writes a backup file when it is being overwritten and deletes it once successful
vim.opt.numberwidth = 4                 --sets number col width to 4 (def = 8)
vim.opt.signcolumn = "yes"              --always shows sign column
vim.opt.wrap = true                     --wraps line if too long
vim.opt.scrolloff = 8                   --no scroll offset
vim.g.have_nerd_font = true           --Allows nerd font
vim.opt.guifont = "monospace:h17"       --sets ui font
vim.opt.showmode = false                --dont need to show mode as its in the status bar
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }     --displays white space with these symbols
vim.opt.inccommand = 'split'            --preview subs live as i type
vim.opt.hlsearch = true                 --highlights on search
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')             --removes highlight after search
vim.g.mapleader = ' '                   --sets leader
vim.g.maplocalleader = ' '              --sets leader

vim.cmd "set whichwrap+=<,>,[,],h,l"
