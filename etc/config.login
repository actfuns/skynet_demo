skynet_root = "./3rd/skynet/"
root = "./"
thread = 8
harbor = 0
start = "main"	-- main script
bootstrap = "snlua bootstrap"	-- The service for bootstrap
--logger = "./skynet.log" 
--daemon = "./skynet.pid" 

lua_path = skynet_root.."lualib/?.lua;"..root.."lualib/?.lua;"..root.."lualib/base/?.lua;"
lua_cpath = skynet_root.."luaclib/?.so;"..root.."luaclib/?.so"
cpath = skynet_root.."cservice/?.so;"..root.."cservice/?.so"
luaservice = skynet_root.."service/?.lua;"..root.."service/?.lua"
lualoader = skynet_root.."lualib/loader.lua"
snax = skynet_root.."?.lua;"
