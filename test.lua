package.cpath = package.cpath..";./luaclib/?.so"

local cjson = require("cjson")
local t1 = cjson.encode({a = 1})
local t2 = cjson.decode(t1)
print(t1, t2.a)