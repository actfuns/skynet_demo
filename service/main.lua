local skynet = require("skynet")
local cjson = require("cjson")

skynet.start(function()
	-- print(cjson.encode({a=1}))
	-- skynet.newservice("syslog")
	skynet.newservice("wsgate")
end)
