require('telescope').setup{
    extensions={
        ["ui-select"] = {
            require('telescope.themes').get_dropdown()
        }
    }
}
pcall(require('telescope').load_extension , 'ui-select')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps',function()
	builtin.grep_string({ search = vim.fn.input("Grep > ")})
end)


