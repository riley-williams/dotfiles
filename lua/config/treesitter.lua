local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
	ensure_installed = { "swift", "rust", "lua", "json", "toml", "python", "bash", "graphql", "gitignore", "markdown", "markdown_inline", "pioasm", "sql", "yaml" },
	sync_install = false,
    highlight = {
        enable = true
    },
}
