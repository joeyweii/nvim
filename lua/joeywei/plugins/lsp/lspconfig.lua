-- import lspconfig plugin safely
local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
    print("lspconfig not found!")
    return
end

-- import cmp-nvim-lsp plugin safely
local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
    print("cmp_nvim_lsp not found!")
    return
end

-- used to enable autocompletion (assign to every lsp server config)
local capabilities = cmp_nvim_lsp.default_capabilities()

-- Change the Diagnostic symbols in the sign column (gutter)
local signs = { Error = " ", Warn = " ", Hint = "ﴞ ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

local keymap = vim.keymap.set -- for conciseness


lspconfig.clangd.setup({
    capabilities = capabilities,
    cmd = {
        "clangd",
        "--clang-tidy"
    },
    filetypes = { "c", "cpp"},
    on_attach = function(client)
        -- Enable formatting
        client.resolved_capabilities.document_formatting = true
        -- Set up additional formatting options
        client.resolved_capabilities.document_range_formatting = true
    end,
})

lspconfig.cmake.setup({
    capabilities = capabilities,
})
