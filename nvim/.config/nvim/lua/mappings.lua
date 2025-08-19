vim.keymap.set("n", "<leader><CR>", "<CMD>nohlsearch<CR>")

vim.keymap.set("n", "<Leader>ec", "<CMD>edit $MYVIMRC<CR>")
vim.keymap.set("n", "<Leader>sc", "<CMD>source $MYVIMRC<CR>")
vim.keymap.set("n", "<Leader>up", "<CMD>lua vim.pack.update()<CR>")

vim.keymap.set("n", "U", "<C-r>")
vim.keymap.set("n", "<C-r>", "<NOP>")

vim.keymap.set("n", "<C-j>", "<C-W>j", { desc = "" })
vim.keymap.set("n", "<C-k>", "<C-W>k", { desc = "" })
vim.keymap.set("n", "<C-h>", "<C-W>h", { desc = "" })
vim.keymap.set("n", "<C-l>", "<C-W>l", { desc = "" })

vim.keymap.set("n", "<Leader>bd", "<CMD>bdelete<CR>")
vim.keymap.set("n", "<Leader><Tab>", "")

vim.keymap.set("n", "<Leader><Leader>x", "<CMD>source %<CR>", { desc = "Execute the current Lua file" })
vim.keymap.set("n", "<Leader>x", "<CMD>.lua<CR>", { desc = "Execute the current Lua line" })
vim.keymap.set("v", "<Leader>x", "<CMD>lua<CR>", { desc = "Execute the current Lua visual selection" })

-- vim:foldmethod=marker:foldlevel=0
