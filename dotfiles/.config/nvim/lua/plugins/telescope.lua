return {
   {
    'nvim-telescope/telescope.nvim', 
    tag = 'v0.1.9',
      dependencies = { 
	      	'nvim-lua/plenary.nvim',
      		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
      },
      config = function()
	      vim.keymap.set("n", "<space>ff", require('telescope.builtin').find_files)
	      vim.keymap.set("n", "<space>fg", require('telescope.builtin').live_grep)
	      vim.keymap.set("n", "<space>fb", require('telescope.builtin').buffers)
	      vim.keymap.set("n", "<space>fh", require('telescope.builtin').help_tags)
	      vim.keymap.set("n", "<space>en", function()
		      require('telescope.builtin').find_files {
			      cwd = vim.fn.stdpath("config")
		      }
	      end)
      end
   }
}
    
