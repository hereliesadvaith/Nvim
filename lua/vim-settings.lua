-- Vim Options
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set autoread")

-- Reload files changed outside Neovim (e.g. by AI) every second
local timer = vim.uv.new_timer()
timer:start(1000, 1000, vim.schedule_wrap(function()
    if vim.fn.mode() ~= "c" then
        vim.cmd("silent! checktime")
    end
end))

-- Vim Keymaps
vim.g.mapleader = " "
-- split screen
vim.keymap.set("n", "<leader>sv", "<C-w>v")
vim.keymap.set("n", "<leader>sh", "<C-w>h")
vim.keymap.set("n", "<leader>sx", ":close<CR>")
-- tabs
vim.keymap.set("n", "<leader>to", ":tabnew<CR>")
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>")
vim.keymap.set("n", "<leader>tn", ":tabn<CR>")
vim.keymap.set("n", "<leader>tp", ":tabp<CR>")
