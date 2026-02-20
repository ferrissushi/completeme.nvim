local config = {}

local default = {
    keybinding = "<TAB>",
    prompt_template = [[
        First analyze the current state of the codebase. Then
        What should be inside of the function at {file_path} Cursor location: line {line}, column {col}
        analyze the codebase to follow the programming rules and context.
        just give me the code snippet that should be inside of it. without saying anything else.
    ]],
}

function config.setup(user_config)
    config.option = vim.tbl_deep_extend("force", default, user_config or {})
end

function config.get()
    return config.option or {}
end

return config
