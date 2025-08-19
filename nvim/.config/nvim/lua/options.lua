vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.winborder = "rounded"
vim.g.mapleader = " "

vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.cursorline = true
vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = ""

vim.opt.undodir = vim.fn.expand("~/.vim/undodir")
vim.opt.undofile = true

vim.opt.spell = true
vim.opt.spelllang = { "es_es", "en_us" }
vim.opt.spellfile = vim.fn.expand("~/.config/nvim/spell/*.add")

vim.opt.ignorecase = true
vim.opt.smartcase = true

if os.getenv("AT_WORK") then
  vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "tcl", "py" },
    callback = function()
      vim.opt_local.tabstop = 4
      vim.opt_local.softtabstop = 4
      vim.opt_local.shiftwidth = 4
    end,
  })
end

-- vim:foldmethod=marker:foldlevel=0
