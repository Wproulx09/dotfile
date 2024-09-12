require("config.lazy")

vim.opt.termguicolors = true

vim.wo.relativenumber = true

require("bufferline").setup{}

require("neo-tree").setup{}

require("mini.statusline").setup()

require("onedark").setup {

	style= 'deep'
}

require('onedark').load()
