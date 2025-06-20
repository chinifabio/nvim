require("config.remaps")
require("config.settings")
require("config.lazy")

vim.api.nvim_exec_autocmds("FileType", {})

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local PsicofabioGroup = augroup('psicofabio', {})

autocmd({"BufWritePre"}, {
    group = PsicofabioGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

autocmd('LspAttach', {
    group = PsicofabioGroup,
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    end
})

-- Auto recenter after TelescopePrompt
autocmd('BufLeave', {
	group = PsicofabioGroup,
	pattern = '*',
	callback = function(events)
		local ft = vim.api.nvim_buf_get_option(events.buf, 'filetype')
		if ft == 'TelescopePrompt' then
			vim.api.nvim_feedkeys('zz', 'n', false)
		end
	end
})
