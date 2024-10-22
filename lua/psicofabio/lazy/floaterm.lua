return {
    'voldikss/vim-floaterm',
    config = function()
        vim.g.floaterm_width = 0.8
        vim.g.floaterm_height = 0.8

        -- local floatterm = require("vim-floaterm")
        vim.keymap.set("n", "<leader>tt", vim.cmd.FloatermToggle, { desc = "[T]oggle [T]terminal" })
    end,
}
