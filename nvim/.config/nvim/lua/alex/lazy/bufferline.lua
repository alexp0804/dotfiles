return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        "folke/tokyonight.nvim",
    },
    config = function()
        require("bufferline").setup {}
    end
}
