return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local builtin = require("telescope.builtin")

        vim.keymap.set("n", "<leader>f", "<Nop>", { desc = "Telescope (search)" }) -- for which-key entry
        vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "find files" })
        vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "find git files" })
        vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "find recent files" })
        vim.keymap.set("n", "<leader>fs", builtin.live_grep, { desc = "find string" })
        vim.keymap.set("n", "<leader>fw", builtin.grep_string, { desc = "find string under cursor" })
        vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "open buffers" })
        vim.keymap.set("n", "<leader>fc", builtin.commands, { desc = "available commands" })
        vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "key remaps" })
        vim.keymap.set("n", "<leader>f&", builtin.registers, { desc = "registers" })
    end,
}
