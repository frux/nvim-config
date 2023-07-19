require("scrollbar").setup({
    icons = {
        diagnostics = {
            [vim.diagnostic.severity.ERROR] = {enabled = true, icon = '●'}
        }
    }
})
