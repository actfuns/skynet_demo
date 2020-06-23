local cjson = {}
local jsoncore = require("cjson")

function cjson.encode(data)
    return jsoncore.encode(data)
end

function cjson.decode(data)
    return jsoncore.decode(data)
end

return cjson