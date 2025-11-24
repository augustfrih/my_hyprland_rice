return {
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000,
	config = function()
        -- Optionally configure and load the colorscheme
        -- directly inside the plugin declaration.
		require('kanagawa').setup({transparent = true
	})
        vim.cmd.colorscheme('kanagawa-wave')
	transparent = true
      end
}
