
-- error
--local kor = 17

--if kor < 18 then
--  error("18 év alattiaknak belépni tilos!")
--end

--print("Üdvözöljük oldalunkon!")


-- assert
--local szam1 = "45"
--local szam2 = "abc"

--assert(tonumber(szam1), "Nem konvertalhato szamra: " .. szam1)
--assert(tonumber(szam2), "Nem konvertalhato szamra: " .. szam2)

--print(tonumber(szam1))
--print(tonumber(szam2))



local function add(a, b)
   assert(type(a) == "number", "a is not a number")
   assert(type(b) == "number", "b is not a number")
--   assert("", "b is not a number") -- csak a nil es false hozza mukodesbe
   return a + b
end

print(add(10, 20))










