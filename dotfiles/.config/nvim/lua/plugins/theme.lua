return {
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000,
	config = function()
        -- Optionally configure and load the colorscheme
        -- directly inside the plugin declaration.
        vim.cmd.colorscheme('kanagawa-dragon')
      end
}
