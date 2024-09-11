return 
{
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	opts = {
	event_handlers = {
		event = "neo_tree_buffer_enter",
		handler = function()
			vim.opt_local.relativenumber = true
			end,
			}
		},
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim"
	}
}
