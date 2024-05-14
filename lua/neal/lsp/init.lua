local status_ok, _=pcall(require, "lspconfig")
if not status_ok then
    return
end

require("neal.lsp.mason")
require("neal.lsp.handlers").setup()
require("neal.lsp.null-ls")
