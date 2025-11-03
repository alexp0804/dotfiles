return {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
        require("ibl").setup({
            indent = {
                highlight = highlight,
            },
            whitespace = {
                highlight = highlight,
                remove_blankline_trail = false,
            },
            scope = {
                enabled = true,
            },
        })
    end
}
