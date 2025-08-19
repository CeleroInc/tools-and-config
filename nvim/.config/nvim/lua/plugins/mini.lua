vim.pack.add({
  { src = "https://github.com/echasnovski/mini.nvim" },
  { src = "https://github.com/echasnovski/mini.cursorword" },
})

require "mini.pick".setup()
require "mini.cursorword".setup()

vim.keymap.set("n", "<Leader>ff", "<CMD>Pick files<CR>")
vim.keymap.set("n", "<Leader>hh", "<CMD>Pick help<CR>")
vim.keymap.set("n", "<Leader>bb", "<CMD>Pick buffers<CR>")
