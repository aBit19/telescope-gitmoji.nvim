local gm_actions = {}

gm_actions.commit = function(entry)
    local emoji = entry.value.value
    vim.ui.input({ prompt = "Enter commit message: " .. emoji .. " " }, function(msg)
        if not msg then
            return
        end

        local git_tool = ":!git"

        vim.cmd(string.format('%s commit -m "%s %s"', git_tool, emoji, msg))
    end)
end

gm_actions.commit_ammend = function(entry)
    local emoji = entry.value.value
    vim.ui.input({ prompt = "Enter commit message: " .. emoji .. " " }, function(msg)
        if not msg then
            return
        end

        local git_tool = ":!git"

        vim.cmd(string.format('%s commit --amend -m "%s %s"', git_tool, emoji, msg))
    end)
end

return gm_actions
