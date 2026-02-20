local M = {}
local config = require("completeme.config")
local utils = require("completeme.utils")

function M.complete_function()
    local prompt = utils.get_correct_prompt()
    local result = vim.fn.system("opencode", "--prompt", prompt)
    local ok, err = pcall(vim.api.nvim_command, result)
    if not ok then
        vim.notify("Failed to copy to clipboard: " .. err, vim.log.LEVEL_ERROR)
    else
        vim.notify("Generated function body to clipboard", vim.log.LEVEL_INFO)
    end
end

return M
