require("augustfrih")

require("config.lazy")
vim.lsp.enable({
    -- emmet
    "emmet-language-server",
    -- lua
    "lua_ls",
    -- html
    "html-lsp",
    -- python
    "basedpyright",
})
require('telescope').load_extension('fzf')

