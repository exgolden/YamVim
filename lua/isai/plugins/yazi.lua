return {
  "mikavilpas/yazi.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("yazi").setup()
    vim.keymap.set("n", "<leader>fy", ":Yazi<CR>", { desc = "Open yazi" })
  end,
}
