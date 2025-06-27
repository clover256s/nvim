return {
    "neovim/nvim-lspconfig",
    dependencies = { "saghen/blink.cmp" },

    -- example using `opts` for defining servers
    opts = {
        servers = {
            lua_ls = {},
            gopls = {},
            rust_analyzer = {}
        },
    },

    config = function(_, opts)
        vim.diagnostic.config({
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = "●",
                    [vim.diagnostic.severity.WARN] = "●",
                    [vim.diagnostic.severity.INFO] = "●",
                    [vim.diagnostic.severity.HINT] = "●",
                },
            },
            virtual_text = {
                prefix = "😭", },
        })

        local lspconfig = require("lspconfig")
        for server, config in pairs(opts.servers) do
            config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
            lspconfig[server].setup(config)
        end
    end,
}
