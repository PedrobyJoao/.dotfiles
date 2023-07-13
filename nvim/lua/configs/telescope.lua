local builtin = require('telescope.builtin')
require('telescope').setup{
    defaults = {
        mappings = {
            i = {
				["<Esc>"] = builtin.close,
                ["<C-k>"] = builtin.move_selection_previous,
                ["<C-j>"] = builtin.move_selection_next,
            },
        },

        layout_config = { 
            height = 0.99,
            width = 0.99,
            mirror = true,
            preview_cutoff = 1,
        },

    },
}

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fw', builtin.grep_string, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
vim.keymap.set('n', '<leader>gst', builtin.git_stash, {})
vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})

vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
