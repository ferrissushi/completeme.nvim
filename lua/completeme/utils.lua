local M = {}

local config = require("completeme.config")

function M.get_cursor_position()
    local cursor_position = vim.api.nvim_win_get_cursor(0)
    return {
        line = cursor_position[1],
        col = cursor_position[2],
    }
end

function M.get_file_path()
    return vim.fn.expand("%p")
end

function M.get_correct_prompt()
    local current_config = config.get()
    local formatted_prompt = current_config.prompt_template
        :gsub("{file_path}", M.get_file_path())
        :gsub("{line}", M.get_cursor_position().line)
        :gsub("{col}", M.get_cursor_position().col)
    return formatted_prompt
end
