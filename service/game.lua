local socket = require("socket")
local skynet = require("skynet")
skynet.yield()
skynet.wait();
skynet.self();
skynet.wakeup();
skynet.timeout();