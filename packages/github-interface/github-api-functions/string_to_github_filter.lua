-- function github_api.string_to_github_filter( string_filter )
--     --formats the filter into the github query format
--     local result = ""
--     for _,field in pairs(github_api.split_string_to_array(string_filter,",")) do
--         local name, value = field:match("^(.+):(.+)$")

--         if value then --if the filter has the right format value will not be null
--             if name == "body" or name == "title" or name == "comments" then
--                 -- filter for text in body or title or comments
--                 result = github_api.combine_unique_strings(result,' \"' .. value .. '\"in:' .. name)

--             elseif name == "label" then
--                 -- will filter for the specific written label
--                 result = github_api.combine_unique_strings(result,' ' .. name .. ':\"' .. value .. '\"')
--             else
--                 -- default filter is a label filter
--                 result = github_api.combine_unique_strings(result , ' label:\"' .. name .. "/".. value ..  '\"')

--             end--end if types of filters

--         end --end if value not null

--     end -- end for adding filters

--     return result
-- end