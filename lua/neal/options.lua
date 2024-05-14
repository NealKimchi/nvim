local options = {
    -- Do --help options for full list
    number = true,		        --adds line numbers
    relativenumber = true,		--adds relative line numbers	
    ruler = true,		        --always shows cursor position
    cursorline = true,               --shows which line cursor is on
    autoindent = true,		--indents to last paragraph
    expandtab = true,		--converts tab to spaces
    shiftwidth = 4,		        --indent length is 4 spaces
    shiftround = true,		--newlines are tabbed correctly
    smarttab = true,                 --tabs the correct way
    backup = false,                  --creates a backup file
    clipboard = "unnamedplus",       --neovim can access system clipboard
    cmdheight = 2,                   --more space for neovim command line
    fileencoding = "utf-8",          --file encoding
    ignorecase = true,               --ignore case in search patterns
    mouse = "a",                     --allows mouse to be used in nvim
    showtabline = 2,                 --always show tabline
    smartcase = true,                --smartcase
    timeoutlen = 1000,               --time to wait for mapped sequence(in milliseconds)
    undofile = true,                 --persistent undo
    updatetime = 300,                --faster completion
    writebackup = false,             --writes a backup file when it is being overwritten and deletes it once successful
    numberwidth = 4,                 --sets number col width to 4 (def = 8)
    signcolumn = "yes",              --always shows sign column
    wrap = true,                     --wraps line if too long
    scrolloff = 10,                   --no scroll offset
    --have_nerd_font = true,           --Allows nerd font
    guifont = "monospace:h17",       --sets ui font
    showmode = false,                --dont need to show mode as its in the status bar
    splitright = true,
    splitbelow = true,
    list = true,
    listchars = { tab = '» ', trail = '·', nbsp = '␣' },     --displays white space with these symbols
    inccommand = 'split',            --preview subs live as i type
    hlsearch = true,                 --highlights on search
    termguicolors = true,
}

vim.opt.shortmess: append "c"

for k,v in pairs(options) do
    vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
