return {
    "sindrets/diffview.nvim",
    config = function()
        require("diffview").setup()
        vim.keymap.set("n", "<leader>gd", ":DiffviewOpen<CR>") -- review all changes
        vim.keymap.set("n", "<leader>gh", ":DiffviewFileHistory %<CR>") -- current file history
        vim.keymap.set("n", "<leader>gq", ":DiffviewClose<CR>")
    end
}
