local config = {}

local default = {
    keybinding = "<TAB>",
    prompt_template = [[
        Complete the method inside the file {file_path} Cursor location: line {line}, column {col}
        analyze the codebase to follow the programming rules and context.
    ]],
}

function config.setup(user_config)
    config.option = vim.tbl_deep_extend("force", default, user_config or {})
end

function config.get()
    return config.option or {}
end

return config
