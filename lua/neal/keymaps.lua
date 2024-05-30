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

keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

--Navigate Buffers--
keymap("n","<S-l>", ":bnext<CR>", opts)
keymap("n","<S-h>", ":bprevious<CR>", opts)

--Insert--
--Press jk fast to enter normal mode
keymap("i", "jk","<Esc>", opts)
keymap("i", "<C-h>","<Left>", opts)
keymap("i", "<C-l>","<Right>", opts)

--Visual--
--Allows for block indentations
keymap("v", "<S-Tab>", ">gv", opts)
keymap("v", "<C-Tab>", "<gv", opts)

--Move text up and down
keymap("v", "mj", ":m .+2<CR>gv", opts) --doesn't work
keymap("v", "mk", ":m .-2<CR>gv", opts)
keymap("v", "p", '"_dP', opts) --makes it so if i paste a texton top of another, the buffer stays the same

--Telescope
-- keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)
