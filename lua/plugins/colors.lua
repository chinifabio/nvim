return {
    "Mofiqul/vscode.nvim",
    name = "vscode",
    config = function()
        require("vscode").setup {
            italic_comment = true,
            transparent = true,
        }
        vim.cmd.colorscheme "vscode"
    end
}