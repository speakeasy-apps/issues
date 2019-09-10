function github_api.get_table_values_by_key(table_array, delimiter)
    -- Returns a string of all values separated by comma where
    -- the key contains the same word as the delimiter
    local selected_filters = ""
    for k,value in pairs(table_array) do
        if string.find(k,delimiter) then
            selected_filters = selected_filters .. "," .. value
        end
    end
    return selected_filters
end