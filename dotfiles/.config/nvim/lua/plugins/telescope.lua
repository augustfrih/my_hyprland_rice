return {
  {
    'nvim-telescope/telescope.nvim', 
    tag = 'v0.1.9',
      dependencies = { 
	      	'nvim-lua/plenary.nvim',
      		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
      },
      config = function()
	      vim.keymap.set("n", "<leader>pf", require('telescope.builtin').find_files)
	      vim.keymap.set("n", "<leader>fg", require('telescope.builtin').live_grep)
	      vim.keymap.set("n", "<leader>fb", require('telescope.builtin').buffers)
	      vim.keymap.set("n", "<C-p>", require('telescope.builtin').git_files)
	      vim.keymap.set("n", "<leader>fh", require('telescope.builtin').help_tags)
	      vim.keymap.set("n", "<leader>en", function()
		      require('telescope.builtin').find_files {
			      cwd = vim.fn.stdpath("config")
		      }
	      end)
	      vim.keymap.set("n", "<leader>ps", function()
		      require('telescope.builtin').grep_string {
			      search = vim.fn.input("Grep > ")
		      }
	      end)
      end
   }
}
    
