local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
	ensure_installed = { "swift", "rust", "lua", "json", "toml" },
	sync_install = false,
    highlight = {
        enable = true
    },
}
