if true then
  return {}
end

return {
  {
    "simrat39/rust-tools.nvim", -- Plugin
    enable = true, -- Enable plugin
    config = function()
      require("rust-tools").setup({
        tools = {
          autoSetHints = true,
          hover_with_actions = true,
          runnables = {
            use_telescope = true,
          },
          inlay_hints = {
            show_parameter_hints = true,
            parameter_hints_prefix = "<- ",
            other_hints_prefix = "=> ",
          },
        },
      })
    end,
  },
}
