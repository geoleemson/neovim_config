local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Use the below format and use as many folders as you want
-- that contain lua files
require("lazy").setup({
    { import = "plugins"},
    { import = "plugins.lsp"},
    { import = "themes"},
})

-- setting theme after loading it above
vim.cmd("colorscheme rose-pine")
