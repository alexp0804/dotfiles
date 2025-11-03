return {
    "williamboman/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "lua_ls",
        },
    },
    dependencies = {
        "williamboman/mason.nvim",
        "neovim/nvim-lspconfig",
    },
    config = function()
        require("mason").setup()
    end
}
