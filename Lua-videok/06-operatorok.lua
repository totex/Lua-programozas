
--[[
aritmetikai operátorok
 +
 -
 *
 /
 ^
 %
]]
--szam1 = 5
--szam2 = 2
--print(szam1 + szam2)
--print(szam1 - szam2)
--print(szam1 * szam2)
--print(szam1 / szam2)
--print(szam1 ^ szam2)
--print(szam1 % szam2)

--operator presedence - operátor elsőbbség:
-- ()
-- ^
-- % * / 
-- + -
--print(2 + 3 * 5) -- 17
--print((2 + 3) * 5) -- 25
--print(5 * 2 ^ 2) -- 20
--print(5 * 4 % 9) -- 2
--print(5 * 4 / 9) -- 2.2222222222222


--[[
értékadó operátor
=
]]


--[[
relációs operátorok
==
~=
>
<
>=
<=
]]
--print(5 == 5)
--print(5 ~= 5)
--print(5 > 5)
--print(5 < 5)
--print(5 >= 5)
--print(5 <= 5)


--[[
egyéb operátorok
..
#
]]
szoveg1 = "Hello"
szoveg2 = "Lua!"
--print(szoveg1 .. szoveg2)

print(szoveg1 .. " " .. szoveg2)

--print(#szoveg1)


--[[
logikai operátorok
and
or
not
]]


--[[
bitwise operátorok - Lua 5.3 verziójától
print(3 & 5)  -- bitwise and
print(3 | 5)  -- bitwise or
print(3 ~ 5)  -- bitwise xor
print(7 >> 1) -- bitwise right shift
print(7 << 1) -- bitwise left shift
print(~7)     -- bitwise not
]]


