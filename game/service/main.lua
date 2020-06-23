local skynet = require("skynet")
local cjson = require("cjson")

skynet.start(function()
	local log = skynet.uniqueservice("log")
	skynet.call(log, "lua", "start")

	-- print(cjson.encode({a=1}))
	-- skynet.newservice("syslog")

	skynet.newservice("wsgate")
	skynet.send("log", "lua", "debug", SERVICE_NAME, "test")
end)