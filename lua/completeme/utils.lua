local M = {}

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
