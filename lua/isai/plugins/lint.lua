return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")
    lint.linters_by_ft = {
      python = { "pylint" },
    }
    vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost" }, {
      callback = function()
        local venv = vim.fn.finddir(".venv", vim.fn.getcwd() .. ";")
        if venv ~= "" then
          lint.linters.pylint.cmd = venv .. "/bin/pylint"
        end
        lint.try_lint()
      end,
    })
  end,
}
