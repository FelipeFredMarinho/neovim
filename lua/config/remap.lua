-- Basic vim
vim.keymap.set("n", "<Space>", "<Nop>", { silent = true, remap = false })
vim.keymap.set("n", "<C-s>", vim.cmd.w)
vim.keymap.set("n", "<C-s><C-s>", vim.cmd.wall)
-- vim.keymap.set("n", "<C-q>", vim.cmd.quit) -- <C-w>q does the job
vim.keymap.set("n", "<C-q><C-q>", vim.cmd.quitall)
vim.keymap.set("n", "9", "$")
vim.keymap.set("n", "<leader>ms", ":mksession! ~/.config/nvim/sessions/session.vim<CR>")
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "tn", vim.cmd.tabnext)
vim.keymap.set("n", "tp", vim.cmd.tabprevious)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "moves lines down in visual selection" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "moves lines up in visual selection" })

