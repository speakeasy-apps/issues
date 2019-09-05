function github_api.labels_to_tags(issue, issues_tags )
    issue.tags = {}
    for _, label in ipairs(issue.labels) do
        local name, value = label.name:match("^(.+)/(.+)$")
        if name then
            -- each name "issue, value, size, etc.."
            issue.tags[name] = value

            issues_tags = github_api.set_issues_tags_values(issues_tags, name, value)
        end
    end
    return issue, issues_tags
end