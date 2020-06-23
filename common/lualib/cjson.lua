local cjson = {}
local json = require("cjson")

function cjson.encode(data)
    return json.encode(data)
end

function cjson.decode(data)
    return json.decode(data)
end

return cjson