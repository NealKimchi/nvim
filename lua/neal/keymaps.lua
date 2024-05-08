local opts = {noremap = true, silent = true}
local term_opts = {silent = true}

local keymap = vim.api.nvim_set_keymap
-- Leader key remap
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

        -- MODES
        -- normal mode = 'n'
        -- insert mode = 'i'
        -- visual mode = 'v'
        -- visual block mode = 'x'
        -- term mode = 't'
        -- command mode = 'c'


--Normal Mode
--Window navigation
keymap("n", "<C-h>","<C-w>h", opts)
keymap("n", "<C-j>","<C-w>j", opts)
keymap("n", "<C-k>","<C-w>k", opts)
keymap("n", "<C-l>","<C-w>l", opts)

keymap("n", "<leader>e", ":Lex 30<cr>", opts)

--Navigate Buffers--
keymap("n","<S-l>", ":bnext<CR>", opts)
keymap("n","<S-h>", ":bprevious<CR>", opts)

--Insert--
--Press jk fast to enter normal mode
keymap("i", "jk","<Esc>", opts)

--Visual--
--Allows for block indentations
keymap("v", "<S-Tab>", ">gv", opts)
keymap("v", "<C-Tab>", "<gv", opts)

