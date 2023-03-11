
--require('MyModule1')
--require('Lua-videok/MyModule1')

--require('Lua-videok.MyModule1')

local mymod1 = require "Lua-videok.MyModule1"
local mymod2 = require "Lua-videok.MyModule2"

print(szam1)
print(szam2)

--print(szam3) --nil
--print(szam4) --nil

print(mymod1.szam5)
print(mymod1.szam6)


--hello()

mymod1.hello()

--hello()
mymod2.hello()



