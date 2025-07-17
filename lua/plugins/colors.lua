-- return {
--     "Mofiqul/vscode.nvim",
--     lazy = false,
--     name = "vscode",
--     config = function()
--         require("vscode").setup {
--             italic_comment = true,
--             transparent = true,
--         }
--         vim.cmd.colorscheme "vscode"
--     end
-- }
return {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
        require("rose-pine").setup({
            styles = {
                bold = true,
                italic = true,
                transparency = true,
            },
        })
        vim.cmd("colorscheme rose-pine")
    end
}
