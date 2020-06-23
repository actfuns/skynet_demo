local skynet = require("skynet")
-- local cjson = require("cjson")

skynet.start(function()
	local log = skynet.uniqueservice("log")
	skynet.call(log, "lua", "start")

	local watchdog = skynet.newservice("watchdog")
    local protocol = "ws"
    local port = 9948
    skynet.call(watchdog, "lua", "start", {
        port = port,
        maxclient = 1024,
        nodelay = true,
        protocol = protocol,
    })
    skynet.error("websocket watchdog listen on", port)
end)