return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
        "nvim-lua/plenary.nvim", 
    },
    config = function()
        vim.keymap.set("n", "<C-p>", require("telescope.builtin").find_files, {})
        vim.keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep, {})
    end
}
