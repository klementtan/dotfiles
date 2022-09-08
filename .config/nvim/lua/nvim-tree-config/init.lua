require("nvim-tree").setup({
    -- auto_close = true,
    diagnostics = {
        enable = true,
    },
    view = {
        mappings = {
            list = {
                { key = { "l", "o", "<2-LeftMouse>" }, action = "edit" },
                { key = { "h", "<BS>" }, action = "close_node" },
                { key = { "<CR>" }, action = "cd" },

            }
        }
    },
})
