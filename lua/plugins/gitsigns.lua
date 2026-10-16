return {
    "lewis6991/gitsigns.nvim",
    config = function()
        local gitsigns = require("gitsigns")
        gitsigns.setup()
        vim.keymap.set("n", "]h", function() gitsigns.nav_hunk("next") end, {}) -- next change
        vim.keymap.set("n", "[h", function() gitsigns.nav_hunk("prev") end, {}) -- previous change
        vim.keymap.set("n", "<leader>gp", gitsigns.preview_hunk_inline, {}) -- show old version inline
        vim.keymap.set("n", "<leader>gr", gitsigns.reset_hunk, {}) -- undo this change
        vim.keymap.set("n", "<leader>gb", gitsigns.blame_line, {}) -- who changed this line
    end
}
