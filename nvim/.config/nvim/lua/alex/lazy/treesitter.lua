return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "c",
                "rust",
                "python",
                "java",
                "lua",
                "vim",
                "vimdoc",
                "javascript",
                "typescript",
                "html",
            },
            sync_install = false,
            highlight = { enabled = true },
            indent = { enabled = true },
        })
    end
}
