local config = {}

local default = {
    keybinding = "<TAB>",
    prompt_template = [[
            Complete this code snippet by analyzing the codebase:
            ```{filetype}
            {code}
            Cursor location: line {line}, column {col}
            Provide a completion suggestion:
    ]],
    context_lines = 50,
}

function config.setup(user_config)
    config.option = vim.tbl_deep_extend("force", default, user_config or {})
end

function config.get()
    return config.option or {}
end

return config
