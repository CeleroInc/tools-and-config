vim.pack.add({
  { src = "https://github.com/lewis6991/gitsigns.nvim" },
})

vim.keymap.set("n", "<Leader>gd", "<CMD>Gitsigns diffthis<CR> <C-w>t <C-w>H <C-w>l")
vim.keymap.set("n", "<Leader>gD", "<CMD>Gitsigns diffthis ~<CR> <C-w>t <C-w>H <C-w>l")
vim.keymap.set("n", "<Leader>gq", "<CMD>Gitsigns setqflist<CR>")
vim.keymap.set("n", "<Leader>gQ", "<CMD>Gitsigns setqflist all<CR>")
vim.keymap.set("n", "<Leader>gp", "<CMD>Gitsigns preview_hunk<CR>")
vim.keymap.set("n", "<Leader>gt", "<CMD>Gitsigns toggle_current_line_blame<CR>")
vim.keymap.set("n", "<Leader>hs", "<CMD>Gitsigns stage_hunk<CR>")
vim.keymap.set("n", "<Leader>hr", "<CMD>Gitsigns reset_hunk<CR>")
vim.keymap.set("n", "<Leader>hu", "<CMD>Gitsigns undo_stage_hunk<CR>")
vim.keymap.set("n", "<Leader>gcc", "<CMD>Git commit<CR>")

require "gitsigns".setup({
  numhl = true,

  on_attach = function(bufnr)
    local gitsigns = require('gitsigns')

    vim.keymap.set("n", "]c", function()
      if vim.wo.diff then
        vim.cmd.normal({ "]c", bang = true })
      else
        gitsigns.nav_hunk("next")
      end
    end)

    vim.keymap.set("n", "[c", function()
      if vim.wo.diff then
        vim.cmd.normal({ "[c", bang = true })
      else
        gitsigns.nav_hunk("prev")
      end
    end)
  end,
})
