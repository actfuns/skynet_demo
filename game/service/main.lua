local skynet = require("skynet")

skynet.start(function()
    --log
	local log = skynet.uniqueservice("log")
    skynet.call(log, "lua", "start")

    --protoloader
    skynet.uniqueservice("protoloader")
    if not skynet.getenv "daemon" then
		skynet.newservice("console")
    end
    
    --watchdog
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