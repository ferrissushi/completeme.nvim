local plenary_dir = vim.fn.stdpath("data") .. "/site/pack/deps/start/plenary.nvim"
if vim.fn.isdirectory(plenary_dir) == 0 then
    vim.fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/nvim-lua/plenary.nvim",
        plenary_dir,
    })
end

vim.opt.runtimepath:prepend(vim.fn.getcwd())

require("completeme")
