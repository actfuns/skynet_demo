local skynet = require("skynet")
local socket = require("skynet.socket")
local websocket = require("http.websocket")

local handle = {}
function handle.connect(id)
    print("ws connect from: " .. tostring(id))
end

function handle.handshake(id, header, url)
    local addr = websocket.addrinfo(id)
    print("ws handshake from: " .. tostring(id), "url", url, "addr:", addr)
    print("----header-----")
    for k,v in pairs(header) do
        print(k,v)
    end
    print("--------------")
end

function handle.message(id, msg, msg_type)
    assert(msg_type == "binary" or msg_type == "text")
    websocket.write(id, msg)
end

function handle.ping(id)
    print("ws ping from: " .. tostring(id) .. "\n")
end

function handle.pong(id)
    print("ws pong from: " .. tostring(id))
end

function handle.close(id, code, reason)
    print("ws close from: " .. tostring(id), code, reason)
end

function handle.error(id)
    print("ws error from: " .. tostring(id))
end

skynet.start(function ()
    local protocol = "ws"
    local id = socket.listen("0.0.0.0", 9948);
    socket.start(id, function (id, addr)
        websocket.accept(id, handle, protocol, addr)
    end)
end)