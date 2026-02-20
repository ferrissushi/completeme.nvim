if vim.version().minor < 5 then
    vim.api.nvim_err_writeln("completeme requires Neovim 0.5 or higher")
    return
end

local completeme = require("completeme")
