return {
    "rmagatti/auto-session",
    config = function()
        local auto_session = require("auto-session")
        auto_session.setup({
            auto_restore_enabled = false,
            auto_session_supress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
        })
        local km = vim.keymap
        km.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for CWD" })
        km.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Save session for auto session root dir" })
    end,
}
