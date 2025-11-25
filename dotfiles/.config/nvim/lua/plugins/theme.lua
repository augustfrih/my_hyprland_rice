return {
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000,
	config = function()
        -- Optionally configure and load the colorscheme
        -- directly inside the plugin declaration.
	require('kanagawa').setup({
			transparent = true
	})
	require'kanagawa'.setup{
  		colors = {
    			theme = { all = { ui = { bg_gutter = 'none' }  }}
  		}
	}
        vim.cmd.colorscheme('kanagawa-wave')
      end
}
