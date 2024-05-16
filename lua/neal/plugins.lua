local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
    use "wbthomason/packer.nvim" -- Have packer manage itself
    use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
    use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
    use "folke/tokyonight.nvim"
  
    --Colorschemes
    use "lunarvim/colorschemes" --library of a bunch of color schemes


    --Autocomplete plugin
    use "hrsh7th/nvim-cmp"       --actual plugin
    use "hrsh7th/cmp-buffer"    --buffer autocomplete
    use "hrsh7th/cmp-path"      --path autocomplete
    use "hrsh7th/cmp-cmdline"   --cmd line complete
    use "saadparwaiz1/cmp_luasnip"   --snippet completion
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-nvim-lua"
    use "windwp/nvim-autopairs" --autocomplete brackets, paranthesis, quotes
    use "numToStr/Comment.nvim" -- easily comment stuff
    use "JoosepAlviste/nvim-ts-context-commentstring" --context commenting
    --snippet engine
    use "L3MON4D3/LuaSnip" --snip engine
    use "rafamadriz/friendly-snippets" --friendly snippets
    
    --Lua
    use "neovim/nvim-lspconfig"
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim" -- simple to use language server installer

    use 'jose-elias-alvarez/null-ls.nvim' -- LSP diagnostics and code actions

    --Telescope
    use "nvim-telescope/telescope.nvim"
    use "nvim-telescope/telescope-media-files.nvim"

    --Treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    }

    use "p00f/nvim-ts-rainbow"
    
    --Git
    use "lewis6991/gitsigns.nvim"


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
