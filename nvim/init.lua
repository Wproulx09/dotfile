require("config.lazy")

vim.opt.termguicolors = true

require("bufferline").setup{}

require("neo-tree").setup{}

require("onedark").setup {

	style= 'deep'
}
require('onedark').load()
