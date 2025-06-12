return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope [F]ind [F]iles' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope [F]ind using [G]rep' })
        vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, { desc = 'Telescope [F]ind [S]ymbol in lsp document symbols' })
        vim.keymap.set('n', '<leader>ob', builtin.buffers, { desc = 'Telescope [O]pened [B]uffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope [F]ind [H]elp tags' })
    end
}
