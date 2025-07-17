return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', function()
            builtin.find_files({
                hidden = true,
                file_ignore_patterns = { ".git/", "node_modules/", ".idea/" }
            })
        end, { desc = 'Telescope [F]ind [F]iles' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope [F]ind using [G]rep' })
        vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols,
            { desc = 'Telescope [F]ind [S]ymbol in lsp document symbols' })
        vim.keymap.set('n', '<leader>ob', builtin.buffers, { desc = 'Telescope [O]pened [B]uffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope [F]ind [H]elp tags' })
        vim.keymap.set('n', '<leader>dd', function()
            require("telescope.builtin").diagnostics({
                bufrn = 0
            })
        end, { desc = 'Telescope [F]ind [H]elp tags' })
    end
}
