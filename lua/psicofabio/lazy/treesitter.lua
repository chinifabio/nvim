return {
    'nvim-treesitter/nvim-treesitter',
    ensure_installed = { "rust", "python", "lua", "dart", "javascript", "html", "bash", "dockerfile", "json" },
    sync_install = false,
    auto_install = true,
    indent = {
        enable = true
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = { "markdown" },
    }
}
