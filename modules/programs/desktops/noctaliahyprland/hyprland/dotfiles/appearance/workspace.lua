for i = 1, 10 do
    local key = i % 10
    hl.workspace_rule({ workspace = i, monitor = "", persistent = true })
end
