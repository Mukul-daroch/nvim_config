local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

-- Require and configure lazy.nvim
require("lazy").setup("plugins",{
   defaults = {
    lazy = false, -- Default to lazy loading, optional
  },
  change_detection = {
    notify = false, -- I find the config changed notification super annoying
  },
})
