vim.g.mapleader = " "

vim.keymap.set("n", "<leader>fe", vim.cmd.Ex, { desc = "open [F]ile [E]xplorer" })

vim.keymap.set("n", "<A-j>", ":m .+1<CR>==")     -- move line up(n)
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==")     -- move line down(n)
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv") -- move line up(v)
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv") -- move line down(v)

-- Remap ; to enter command-line mode
-- vim.api.nvim_set_keymap('n', 'ç', ':', { noremap = true })
-- Disable : to prevent command-line mode from opening
-- vim.api.nvim_set_keymap('n', ':', '<Nop>', { noremap = true })
