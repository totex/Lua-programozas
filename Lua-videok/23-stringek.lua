
hello1 = 'Hello!'
hello2 = 'Helló!'

egysoros_szoveg = "Ez egy egysoros string, azaz karakterlánc."

tobbsoros_szoveg = [[
Ez
itt
egy
többsoros
string.
]]


--print(string.len(hello1))
--print(#hello1)

--print(string.len(hello2))
--print(#hello2)

--print(string.byte('A'))
--print(string.char(65))

--print(string.find(egysoros_szoveg, 'azaz'))
--print(string.gsub(hello2, 'ó', 'ou'))
--print(string.reverse(hello2))
--print(string.upper(tobbsoros_szoveg))


--%d - a decimal number
--%x - for hexadecimal
--%o - for octal
--%f - for a floating-point number
--%s - strings

--udv = "Helló az én nevem %s, és %d éves vagyok."
--udv = string.format(udv, "Andrea", 28)
--print(udv)

--pi_szoveg = "A PI értéke: %.8f"
--print(string.format(pi_szoveg, math.pi))


local nap = 5 
local honap = 2 
local ev = 2023
local datum = string.format("%02d/%02d/%04d", nap, honap, ev)
print(datum)











